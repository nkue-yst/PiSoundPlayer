#include "OscReceiver.hpp"

#include <cstring>
#include <iostream>
#include <string>

#include "SDL2/SDL.h"
#include "SDL2/SDL_mixer.h"

static Mix_Chunk* se = nullptr;

OscReceiver::OscReceiver()
{

}

void OscReceiver::ProcessMessage(const osc::ReceivedMessage& msg, const IpEndpointName& remote_end_pt)
{
    try
    {
        if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/se/play") == 0)
        {
            std::string asset_name = "assets/" + static_cast<std::string>(msg.ArgumentsBegin()->AsString());
            se = Mix_LoadWAV(asset_name.c_str());
            if (!se)
            {
                if (Mix_PlayChannel(-1, se, 0) < 0)
                {
                    std::cerr << "Failed to play se: " << msg.ArgumentsBegin()->AsString() << std::endl;
                }
            }
            else
            {
                std::cerr << "Failed to load se file: " << msg.ArgumentsBegin()->AsString() << std::endl;
            }
        }
        else
        {

        }
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }
    
}

void runOscReceive()
{
    OscReceiver osc_receiver;
    UdpListeningReceiveSocket sock(IpEndpointName(IpEndpointName::ANY_ADDRESS, 44100), &osc_receiver);
    sock.RunUntilSigInt();
}
