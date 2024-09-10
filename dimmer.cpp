#include "dimmer.h"
int ch_num = 8;
//int ch_array[ch_num];
int ch_array[8];
int stepSecond = 20; // how manny dimming steps per second
unsigned int timer = 0;
int todoList = 0; // 0=nothing todo --- 1=dimm off --- 2=dim on --- 3=rgb

Dimmer::Dimmer(int number)
{}

void Dimmer::init()
{
//pca.init;
}

void Dimmer::knxParam()
{
    for ( int i=1 ; i<ch_num ; i++ )
    {
      
            ch_array[i].chType     = knx.param(0+i*10);
            ch_array[i].minDimDay   = knx.param(1+i*10);
            ch_array[i].minDimNight = knx.param(2+i*10);
            ch_array[i].maxDimDay    = knx.param(3+i*10);
            ch_array[i].maxDimNight  = knx.param(4+i*10);
            ch_array[i].timeDay    = knx.param(5+i*10);
            ch_array[i].timeNight  = knx.param(6+i*10);
            ch_array[i].diffDimDay = ch_array[i].maxDimDay - ch_array[i].minDimDay;
            ch_array[i].diffDimNight = ch_array[i].maxDimNight - ch_array[i].minDimNight;
            ch_array[i].setpointfix = [5]; // rgb or cw maximum setpoint when max brightness
            ch_array[i].setpointfix[0] = knx.param(R-Wert);
            ch_array[i].setpointfix[1] = knx.param(G-Wert);
            ch_array[i].setpointfix[2] = knx.param(B-Wert);
            ch_array[i].setpointfix[3] = knx.param(C-Wert);
            ch_array[i].setpointfix[4] = knx.param(W-Wert);
            ch_array[i].keepSetpoint = knx.param(); // wenn aus dann wieder mit standart wert dimmen anstatt temporär setpoint
            ch_array[i].setpointtemp = [5]
        
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
/*
go_ch1_switch.dataPointType(DPT_Switch);
go_ch1_reldim.dataPointType(DPT_);
go_ch1_absdim.dataPointType(DPT_);
go_ch1_color.dataPointType(DPT_Colour_RGB);
go_ch1_state.dataPointType(DPT_Switch);
go_ch1_dimmer.dataPointType(DPT_);
*/
}

void Dimmer::setupCallback()
{
  /*
        go_ch1_switch.callback(cb_go_ch1_switch);
        go_ch1_reldim.callback(cb_go_ch1_reldim);
        go_ch1_absdim.callback(cb_go_ch1_absdim);
        go_ch1_color.callback(cb_go_ch1_color);
  */
}

void Dimmer::setStart()
{
        timer=millis();
}

void Dimmer::loop()
{
        if ( timer+(1000/stepSecond) < millis() )
        {
                for ( int i=1 ; i<ch_num ; i++)
                {
                        
                }
        }
}


void Dimmer::cb_go_ch1_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch1_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch1_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch1_color(GroupObject& go)
{}
