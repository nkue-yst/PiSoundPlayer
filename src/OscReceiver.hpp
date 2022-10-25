#ifndef __OSC_RECEIVER_HPP__
#define __OSC_RECEIVER_HPP__

#include "ip/IpEndpointName.h"
#include "ip/UdpSocket.h"

#include "osc/OscReceivedElements.h"
#include "osc/OscPacketListener.h"
#include "osc/OscOutboundPacketStream.h"

class OscReceiver : public osc::OscPacketListener
{
public:
    OscReceiver();

private:
    void ProcessMessage(const osc::ReceivedMessage& msg, const IpEndpointName& remote_end_pt) override;
};

void runOscReceive();

#endif
