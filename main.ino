#include <Arduino.h>
#include <knx.h>
#include <dimmer.h>
int ch_num = 0;
Dimmer dimmer = new Dimmer();



void setup() 
{
    knx.readMemory();
    if ( knx.configured() )
    {
      dimmer.init();
      ch_num = knx.Parameter()
      dimmer.calculate();
      dimmmer.setupCallback();
    }
    else
    {
          knx.progMode(on);
    }
  
}



void loop()
{
    knx.loop();
    if ( knx.configured() )
    {
          dimmer.loop();
    }

}
