#include <Arduino.h>
#include <knx.h>
#include "dimmer.h"
int ch_num = 0;
Dimmer dimmer(2);



void setup() 
{
    knx.readMemory();
    if ( knx.configured() )
    {
      dimmer.init();
      ch_num = knx.paramInt(2);
      dimmer.knxParam();
      dimmer.setupCallback();
    }
    else
    {
          knx.progMode(true);
    }
  dimmer.setStart();
}



void loop()
{
    knx.loop();
    if ( knx.configured() )
    {
          dimmer.loop();
    }

}
