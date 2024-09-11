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
      for ( int i=1; i<17; i++)
      {
              if ( knx.paramInt(i) > 0 )   {ch_num++ ;  }
      }
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
