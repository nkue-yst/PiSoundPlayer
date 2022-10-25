cmake_minimum_required(VERSION 3.2)

### Setup Project ###
project(PiSoundPlayer CXX)

### Setup C++ ###
enable_language(CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

### Create Target "PiSoundPlayer" ###
file(GLOB TARGET_SRC src/*.cpp src/*.hpp)
set(SOURCES ${TARGET_SRC})
add_executable(PiSoundPlayer ${SOURCES})

### Setup SDL2 ###
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/sdl2)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIR})
target_link_libraries(PiSoundPlayer SDL2::Main)

find_package(SDL2_mixer REQUIRED)
include_directories(${SDLMIXER_INCLUDE_DIR})
target_link_libraries(PiSoundPlayer SDL2::Mixer)

### Setup oscpack ###
set(OSCPACK_DIR ${CMAKE_SOURCE_DIR}/oscpack)
include_directories(${OSCPACK_DIR})
set(IpSystemTypePath ip/posix)
add_library(oscpack
    ${OSCPACK_DIR}/ip/IpEndpointName.h
    ${OSCPACK_DIR}/ip/IpEndpointName.cpp
    ${OSCPACK_DIR}/ip/NetworkingUtils.h
    ${OSCPACK_DIR}/${IpSystemTypePath}/NetworkingUtils.cpp
    ${OSCPACK_DIR}/ip/UdpSocket.h
    ${OSCPACK_DIR}/${IpSystemTypePath}/UdpSocket.cpp
    ${OSCPACK_DIR}/ip/PacketListener.h
    ${OSCPACK_DIR}/ip/TimerListener.h
    ${OSCPACK_DIR}/osc/OscTypes.h
    ${OSCPACK_DIR}/osc/OscTypes.cpp 
    ${OSCPACK_DIR}/osc/OscHostEndianness.h
    ${OSCPACK_DIR}/osc/OscException.h
    ${OSCPACK_DIR}/osc/OscPacketListener.h
    ${OSCPACK_DIR}/osc/MessageMappingOscPacketListener.h
    ${OSCPACK_DIR}/osc/OscReceivedElements.h
    ${OSCPACK_DIR}/osc/OscReceivedElements.cpp
    ${OSCPACK_DIR}/osc/OscPrintReceivedElements.h
    ${OSCPACK_DIR}/osc/OscPrintReceivedElements.cpp
    ${OSCPACK_DIR}/osc/OscOutboundPacketStream.h
    ${OSCPACK_DIR}/osc/OscOutboundPacketStream.cpp
)
target_link_libraries(PiSoundPlayer oscpack)

### Copy assets ###
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR})
