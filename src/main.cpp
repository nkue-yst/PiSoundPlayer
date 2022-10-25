#include <iostream>

#include "OscReceiver.hpp"

#include "SDL2/SDL.h"
#include "SDL2/SDL_mixer.h"

int main(int argc, char** argv)
{
    if (SDL_Init(SDL_INIT_AUDIO) < 0)
    {
        return -1;
    }

    if (Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 2, 2048) < 0)
    {
        SDL_Quit();
        return -1;
    }

    std::cout << "Start Pi Sound Player" << std::endl;

    runOscReceive();

    std::cout << "Stop Pi Sound Player" << std::endl;

    Mix_Quit();
    SDL_Quit();
}
