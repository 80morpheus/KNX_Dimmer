#include "dimmer.h"
int channel_number = 0;
//int ch_array[ch_num];
int ch_array[16];
#define stepsPerSecond = 20; // how manny dimming steps per second - less then 100 -  more then 1
unsigned int timer = 0;
int todoList = 0; // 0=nothing todo --- 1=dimm off --- 2=dim on --- 3=rgb

Dimmer::Dimmer(int number)
{}

void Dimmer::init()
{
//pca.init;
}

void Dimmer::setChannel(int _number, int _value)
{
    // set pca
}

void Dimmer::knxParam(int _ch_num)
{
    for ( int i=1 ; i<_ch_num ; i++ )
    {
            channel_number = _ch_num;
            ConfigKnx ch_array[i];

            ch_array[i].active       = knx.ParamInt(0+i+10);
            ch_array[i].chType       = knx.paramInt(1+i*10);
            ch_array[i].minDimDay    = knx.paramInt(2+i*10);
            ch_array[i].minDimNight  = knx.paramInt(3+i*10);
            ch_array[i].maxDimDay    = knx.paramInt(4+i*10);
            ch_array[i].maxDimNight  = knx.paramInt(5+i*10);
            ch_array[i].timeDay      = knx.paramInt(6+i*10);
            ch_array[i].timeNight    = knx.paramInt(7+i*10);
            ch_array[i].stwayTime    = knx.paramInt(8+i*10);
            ch_array[i].stwayTrig    = knx.paramInt(9+i*10);
            ch_array[i].toDo         = 0;                        // 0 = nothing to do --- 1 = dimming for abs --- 2 = dimming to min --- 3 = dimming to max --- 4 = off dimming --- 5 = on dimming


            // RGB VERSION
            //ch_array[i].setpointix[5]; // rgb or cw maximum setpoint when max brightness
            ch_array[i].setpointFix[0] = knx.paramInt(10);  //R-Wert);
            ch_array[i].setpointFix[1] = knx.paramInt(11);  //G-Wert);
            ch_array[i].setpointFix[2] = knx.paramInt(12);  //B-Wert);
            ch_array[i].setpointFix[3] = knx.paramInt(13);  //C-Wert);
            ch_array[i].setpointFix[4] = knx.paramInt(14);  //W-Wert);
            ch_array[i].keepSetpoint = knx.paramInt(15); // wenn aus dann wieder mit standart wert dimmen anstatt temporär setpoint
            //ch_array[i].setpointTemp[5];


        
            // version mit vordefinierter dimm tabelle --- eigentlich blödsinn
            ch_array[i].diffDimDay = ch_array[i].maxDimDay - ch_array[i].minDimDay;
            ch_array[i].diffDimNight = ch_array[i].maxDimNight - ch_array[i].minDimNight;
            ch_array[i].tableDay[0] =0;
            ch_array[i].tableNight[0] =0;
            ch_array[i].tableDay[1] = ch_array[i].minDimDay;
            ch_array[i].tableNight[1] = ch_array[i].minDimNight;
            ch_array[i].stepsDay=2;
            ch_array[i].stepsNight=2;
            for (; ch_array[i].stepsDay > Int(ch_array[i].diffDimDay / ch_array[i].timeDay * stepsPerSecond) ; ch_array[i].stepsDay++ )
                {ch_array[i].tableDay[stepsDay] = (ch_array[i].stepsDay-1) * ( ch_array[i].diffDimDay / ch_array[i].timeDay * stepsPerSecond )  ;  }
            for (; ch_array[i].stepsNight > Int(ch_array[i].diffDimNight / ch_array[i].timeNight * stepsPerSecond) ; ch_array[i].stepsNight++ )
                {ch_array[i].tableDay[ch_array[i].stepsNight] = (ch_array[i].stepsNight-1) * ( ch_array[i].diffDimNight / ch_array[i].timeNight * stepsPerSecond )  ;  }
            ch_array[i].stepsDay++;
            ch_array[i].stepsNight++;
            ch_array[i].tableDay[ch_array[i].stepsDay] = ch_array[i].maxDimDay;
            ch_array[i].tableNight[ch_array[i].stepsNight] = ch_array[i].maxDimNight;
            // version mit vordefinierter dimm tabelle --- eigentlich blödsinn


        
            // dimmwert berechnen
            // dimmwerte sind 0 - min - xxx - max
            // xxx ist schrittweite - max-min / zeit für dimmen bei 50ms pro durchlauf = 20 mal pro sekunde wert ändern optional 10 mal pro sekunde
            ch_array[i].diffDimDay = ch_array[i].maxDimDay - ch_array[i].minDimDay;
            ch_array[i].diffDimNight = ch_array[i].maxDimNight - ch_array[i].minDimNight;
            ch_array[i].dimStepDay = ch_array[i].diffDimDay /ch_array[i].timeDay * stepsPerSecond; 
            ch_array[i].dimStepNight = ch_array[i].diffDimNight /ch_array[i].timeNight * stepsPerSecond;
            // dimmwert berechnen
        
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
        if ( timer+(1000/stepsPerSecond) < millis() )
        {
                for ( int i=1 ; i<channel_number ; i++)
                {
                        if ( ch_array[i].toDo == 1 )
                }
        }
}


void Dimmer::cb_go_ch1_switch(GroupObject& go)
{
    if ( go.value == on  ) { ch_array[0].todo = 5; }
    if ( go.value == off ) { ch_array[0].toDo = 4; }
}
void Dimmer::cb_go_ch1_reldim(GroupObject& go)
{ 
    if ( go.value == up) {ch_array[0].toDo = 3;}
    if ( go.value == down) {ch_array[0].toDo = 2;}
}
void Dimmer::cb_go_ch1_absdim(GroupObject& go)
{ ch_array[0].setpoint = go.value ; ch_array[0].toDo = 2;}
void Dimmer::cb_go_ch1_color(GroupObject& go)
{}
