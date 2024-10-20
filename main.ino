#include <Arduino.h>
#define MASK_VERSION 0x07B0
#define USE_RP2040_EEPROM_EMULATION
#include <knx.h>
//#include <Wire.h>
#include "dimmer.h"
int ch_num = 0;
Dimmer dimmer(2);







void setup() 
{
    knx.readMemory();
    if ( knx.configured() )
    {
      //Wire.begin();
      dimmer.init();
      for ( int i=1; i<17; i++)
      {
              if ( knx.paramInt(i*10) > 0 )   {ch_num++ ;  }
      }
      dimmer.knxParam(ch_num);

      dimmer.setGroupObject();
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
