#include "dimmer.h"
#include <Wire.h>
int channel_number = 0;
//int ch_array[ch_num];
int ch_array[16];
int stepSecond = 20; // how manny dimming steps per second
unsigned int timer = 0;
//int knxConfig;
ConfigKNX knxConfig;





Dimmer::Dimmer(int number)
{}

void Dimmer::init()
{
switch (knxConfig.chip_type)
  {
  case 0:
    initPCA9685();
    break;
  case 1:
    initPCA9635PW();
    break;
  case 2:
    break;
  }
}

int Dimmer::initPCA9685()
{
//PCA9685 Reset und test
        Wire.begin();
        Wire.beginTransmission(0x40);
        Wire.write(0x00);
        Wire.write(0x01);
        Wire.endTransmission();
        Wire.requestFrom(0x40,1);
        if ( Wire.read() < 0) { 
           //Serial.println("PCA9685 0x40 fehler"); 
           return 0;
           }
           else {
           //Serial.println("PCA9685 0x40 i.O."); 
           return 1;
           }
}

void Dimmer::initPCA9635PW()
{}

void Dimmer::setDimmer(int channel, int dimValue)
{
switch (knxConfig.chip_type)
  {
  case 0:
    setPCA9685(channel,dimValue);
    break;
  case 1:
    break;
  case 2:
    break;
  }
}

void Dimmer::setPCA9685(int _channel, int _dimVal)
{
     Wire.beginTransmission(0x40);
     Wire.write(4*_channel+0x08);
     Wire.write(lowByte(_dimVal));
     Wire.endTransmission();
     Wire.beginTransmission(0x40);
     Wire.write(4*_channel+0x09);
     Wire.write(highByte(_dimVal));
     Wire.endTransmission();
}

void Dimmer::setPCA9635PW(int _channel, int _dimVal)
{}

void Dimmer::knxParam(int _ch_num)
{
    for ( int i=1 ; i<_ch_num ; i++ )
    {
            channel_number = _ch_num;
            ChannelConfig ch_array[i];
            ch_array[i].todo          = 0;
            ch_array[i].chType        = knx.paramInt(1+i*10);
            ch_array[i].minDimDay        = knx.paramInt(2+i*10);
            ch_array[i].maxDimDay     = knx.paramInt(3+i*10);
            ch_array[i].maxDimNight   = knx.paramInt(4+i*10);
            ch_array[i].speedDay      = knx.paramInt(5+i*10);
            ch_array[i].speedNight    = knx.paramInt(6+i*10);
            ch_array[i].stairTime     = knx.paramInt(7+i*10);
            ch_array[i].stairTrig     = knx.paramInt(8+i*10);

            ch_array[i].diffDimDay    = ch_array[i].maxDimDay - ch_array[i].minDimDay;
            ch_array[i].diffDimNight  = ch_array[i].maxDimNight - ch_array[i].minDimNight;
            //ch_array[i].setpointix[5]; // rgb or cw maximum setpoint when max brightness
            ch_array[i].setpointFix[0] = knx.paramInt(10);  //R-Wert);
            ch_array[i].setpointFix[1] = knx.paramInt(11);  //G-Wert);
            ch_array[i].setpointFix[2] = knx.paramInt(12);  //B-Wert);
            ch_array[i].setpointFix[3] = knx.paramInt(13);  //C-Wert);
            ch_array[i].setpointFix[4] = knx.paramInt(14);  //W-Wert);
            ch_array[i].keepSetpoint   = knx.paramInt(15); // wenn aus dann wieder mit standard wert dimmen anstatt temporär setpoint
            //ch_array[i].setpointTemp[5];
        /*
            // version mit vordefinierter dimm tabelle --- eigentlich blödsinn
            ch_array[i].tableDay = [5];  // RGBCW 
            for ( int j=0; j<5 ; j++) { ch_array[i].tableDay[i]=[];     ch_array[i].tableDay[0]=0;     }
            ch_array[i].tableNight = [5];  // RGBCW
            for ( int j=0; j<5 ; j++) { ch_array[i].tableNight[i]=[];   ch_array[i].tableNight[0]=0;   }
            ch_array[i].dimPos = 0;
            // if single white led
            if ( ch_array[i].chType == 1)
            {
                    for ( int j=1; j< ch_array[i].timeDay*stepSecond ; j++)
                    {   ch_array[i].tableDay[j] =     ch_array[i].diffDimDay / stepSecond * ch_array[i].timeDay * 16 ;     }
                    for ( int j=1; j< ch_array[i].timeNight*stepSecond ; j++)
                    {   ch_array[i].tableNight[j] =     ch_array[i].diffDimNight / stepSecond * ch_array[i].timeNight * 16 ;     }
            }
            // version mit vordefinierter dimm tabelle --- eigentlich blödsinn
        */    
    }
}

void Dimmer::setGroupObject()
{

go_ch01_switch.dataPointType(DPT_Switch);
go_ch01_reldim.dataPointType(DPT_Control_Dimming);
go_ch01_absdim.dataPointType(DPT_Scaling);
go_ch01_color.dataPointType(DPT_Colour_RGB);
go_ch01_state.dataPointType(DPT_Switch);
go_ch01_dimmer.dataPointType(DPT_Scaling);

go_ch02_switch.dataPointType(DPT_Switch);
go_ch02_reldim.dataPointType(DPT_Control_Dimming);
go_ch02_absdim.dataPointType(DPT_Scaling);
go_ch02_color.dataPointType(DPT_Colour_RGB);
go_ch02_state.dataPointType(DPT_Switch);
go_ch02_dimmer.dataPointType(DPT_Scaling);
*/
}

void Dimmer::setupCallback()
{
  
        go_ch01_switch.callback(dimmer.cb_go_ch01_switch);
        go_ch01_reldim.callback(cb_go_ch01_reldim);
        go_ch01_absdim.callback(cb_go_ch01_absdim);
        go_ch01_color.callback(cb_go_ch01_color);
        go_ch01_temp.callback(cb_go_ch01_temp);

        go_ch02_switch.callback(cb_go_ch02_switch);
        go_ch02_reldim.callback(cb_go_ch02_reldim);
        go_ch02_absdim.callback(cb_go_ch02_absdim);
        go_ch02_color.callback(cb_go_ch02_color);
        go_ch02_temp.callback(cb_go_ch02_temp);

        go_ch03_switch.callback(cb_go_ch03_switch);
        go_ch03_reldim.callback(cb_go_ch03_reldim);
        go_ch03_absdim.callback(cb_go_ch03_absdim);
        go_ch03_color.callback(cb_go_ch03_color);
        go_ch03_temp.callback(cb_go_ch03_temp);

        go_ch04_switch.callback(cb_go_ch04_switch);
        go_ch04_reldim.callback(cb_go_ch04_reldim);
        go_ch04_absdim.callback(cb_go_ch04_absdim);
        go_ch04_color.callback(cb_go_ch04_color);
        go_ch04_temp.callback(cb_go_ch04_temp);

        go_ch05_switch.callback(cb_go_ch05_switch);
        go_ch05_reldim.callback(cb_go_ch05_reldim);
        go_ch05_absdim.callback(cb_go_ch05_absdim);
        go_ch05_color.callback(cb_go_ch05_color);
        go_ch05_temp.callback(cb_go_ch05_temp);

        go_ch06_switch.callback(cb_go_ch06_switch);
        go_ch06_reldim.callback(cb_go_ch06_reldim);
        go_ch06_absdim.callback(cb_go_ch06_absdim);
        go_ch06_color.callback(cb_go_ch06_color);
        go_ch06_temp.callback(cb_go_ch06_temp);

        go_ch07_switch.callback(cb_go_ch07_switch);
        go_ch07_reldim.callback(cb_go_ch07_reldim);
        go_ch07_absdim.callback(cb_go_ch07_absdim);
        go_ch07_color.callback(cb_go_ch07_color);
        go_ch07_temp.callback(cb_go_ch07_temp);

        go_ch08_switch.callback(cb_go_ch08_switch);
        go_ch08_reldim.callback(cb_go_ch08_reldim);
        go_ch08_absdim.callback(cb_go_ch08_absdim);
        go_ch08_color.callback(cb_go_ch08_color);
        go_ch08_temp.callback(cb_go_ch08_temp);

        go_ch09_switch.callback(cb_go_ch09_switch);
        go_ch09_reldim.callback(cb_go_ch09_reldim);
        go_ch09_absdim.callback(cb_go_ch09_absdim);
        go_ch09_color.callback(cb_go_ch09_color);
        go_ch09_temp.callback(cb_go_ch09_temp);

        go_ch10_switch.callback(cb_go_ch10_switch);
        go_ch10_reldim.callback(cb_go_ch10_reldim);
        go_ch10_absdim.callback(cb_go_ch10_absdim);
        go_ch10_color.callback(cb_go_ch10_color);
        go_ch10_temp.callback(cb_go_ch10_temp);

        go_ch11_switch.callback(cb_go_ch11_switch);
        go_ch11_reldim.callback(cb_go_ch11_reldim);
        go_ch11_absdim.callback(cb_go_ch11_absdim);
        go_ch11_color.callback(cb_go_ch11_color);
        go_ch11_temp.callback(cb_go_ch11_temp);

        go_ch12_switch.callback(cb_go_ch12_switch);
        go_ch12_reldim.callback(cb_go_ch12_reldim);
        go_ch12_absdim.callback(cb_go_ch12_absdim);
        go_ch12_color.callback(cb_go_ch12_color);
        go_ch12_temp.callback(cb_go_ch12_temp);

        go_ch13_switch.callback(cb_go_ch13_switch);
        go_ch13_reldim.callback(cb_go_ch13_reldim);
        go_ch13_absdim.callback(cb_go_ch13_absdim);
        go_ch13_color.callback(cb_go_ch13_color);
        go_ch13_temp.callback(cb_go_ch13_temp);

        go_ch14_switch.callback(cb_go_ch14_switch);
        go_ch14_reldim.callback(cb_go_ch14_reldim);
        go_ch14_absdim.callback(cb_go_ch14_absdim);
        go_ch14_color.callback(cb_go_ch14_color);
        go_ch14_temp.callback(cb_go_ch14_temp);

        go_ch15_switch.callback(cb_go_ch15_switch);
        go_ch15_reldim.callback(cb_go_ch15_reldim);
        go_ch15_absdim.callback(cb_go_ch15_absdim);
        go_ch15_color.callback(cb_go_ch15_color);
        go_ch15_temp.callback(cb_go_ch15_temp);

        go_ch16_switch.callback(cb_go_ch16_switch);
        go_ch16_reldim.callback(cb_go_ch16_reldim);
        go_ch16_absdim.callback(cb_go_ch16_absdim);
        go_ch16_color.callback(cb_go_ch16_color);
        go_ch16_temp.callback(cb_go_ch16_temp);


  
}

void Dimmer::setStart()
{
        timer=millis();
}

void Dimmer::loop()
{
        if ( timer+(1000/stepSecond) < millis() )
        {
                for ( int i=1 ; i<channel_number ; i++)
                {
                      switch  (ch_array[i].todo)
                        {
                          case 0:
                              break;
                          case 1:
                              break;
                          case 2:
                              break;
                        }
                }
        }
}

//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch01_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch01_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch01_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch01_color(GroupObject& go)
{}
void Dimmer::cb_go_ch01_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch02_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch02_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch02_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch02_color(GroupObject& go)
{}
void Dimmer::cb_go_ch02_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch03_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch03_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch03_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch03_color(GroupObject& go)
{}
void Dimmer::cb_go_ch03_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch04_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch04_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch04_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch04_color(GroupObject& go)
{}
void Dimmer::cb_go_ch04_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch05_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch05_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch05_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch05_color(GroupObject& go)
{}
void Dimmer::cb_go_ch05_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch06_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch06_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch06_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch06_color(GroupObject& go)
{}
void Dimmer::cb_go_ch06_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch07_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch07_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch07_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch07_color(GroupObject& go)
{}
void Dimmer::cb_go_ch07_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch08_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch08_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch08_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch08_color(GroupObject& go)
{}
void Dimmer::cb_go_ch08_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch09_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch09_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch09_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch09_color(GroupObject& go)
{}
void Dimmer::cb_go_ch09_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch10_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch10_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch10_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch10_color(GroupObject& go)
{}
void Dimmer::cb_go_ch10_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch11_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch11_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch11_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch11_color(GroupObject& go)
{}
void Dimmer::cb_go_ch11_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch12_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch12_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch12_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch12_color(GroupObject& go)
{}
void Dimmer::cb_go_ch12_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch13_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch13_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch13_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch13_color(GroupObject& go)
{}
void Dimmer::cb_go_ch13_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch14_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch14_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch14_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch14_color(GroupObject& go)
{}
void Dimmer::cb_go_ch14_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch15_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch15_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch15_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch15_color(GroupObject& go)
{}
void Dimmer::cb_go_ch15_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------
void Dimmer::cb_go_ch16_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch16_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch16_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch16_color(GroupObject& go)
{}
void Dimmer::cb_go_ch16_temp(GroupObject& go)
{}
//-------------------------------------------------------------------------------







