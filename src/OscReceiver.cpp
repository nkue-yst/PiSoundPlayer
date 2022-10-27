#include "OscReceiver.hpp"

#include <cstring>
#include <iostream>
#include <string>

#include "SDL2/SDL.h"
#include "SDL2/SDL_mixer.h"

static Mix_Chunk* se = nullptr;
static Mix_Music* bgm = nullptr;

OscReceiver::OscReceiver()
{

}

void OscReceiver::ProcessMessage(const osc::ReceivedMessage& msg, const IpEndpointName& remote_end_pt)
{
    try
    {
        if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/se/play") == 0)
        {
            std::string asset_name = "./assets/" + static_cast<std::string>(msg.ArgumentsBegin()->AsString());
            se = Mix_LoadWAV(asset_name.c_str());
            if (se)
            {
                if (Mix_PlayChannel(-1, se, 0) < 0)
                {
                    std::cerr << "Failed to play se: " << asset_name << std::endl;
                }
            }
            else
            {
                std::cerr << "Failed to load se file: " << asset_name << std::endl;
            }
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/se/volume") == 0)
        {
            int32_t new_volume = msg.ArgumentsBegin()->AsInt32();
            Mix_VolumeChunk(se, new_volume);
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/bgm/play") == 0)
        {
            std::string asset_name = "./assets/" + static_cast<std::string>(msg.ArgumentsBegin()->AsString());
            bgm = Mix_LoadMUS(asset_name.c_str());
            if (bgm)
            {
                if (Mix_PlayMusic(bgm, -1) < 0)
                {
                    std::cerr << "Failed to play bgm: " << asset_name << std::endl;
                }
            }
            else
            {
                std::cerr << "Failed to load bgm file: " << asset_name << std::endl;
            }
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/bgm/pause") == 0)
        {
            Mix_PauseMusic();
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/bgm/resume") == 0)
        {
            Mix_ResumeMusic();
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/bgm/stop") == 0)
        {
            Mix_HaltMusic();
        }
        else if (std::strcmp(msg.AddressPattern(), "/PiSoundPlayer/bgm/volume") == 0)
        {
            int32_t new_volume = msg.ArgumentsBegin()->AsInt32();
            Mix_VolumeMusic(new_volume);
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

    Mix_FreeChunk(se);
    Mix_FreeMusic(bgm);
}
