#include <Arduino.h>
#include <knx.h>

#ifndef Dimmer_h
#define Dimmer_h

#define go_ch1_switch
#define go_ch1_reldim
#define go_ch1_absdim
#define go_ch1_color
#define go_ch1_temp
#define go_ch1_state
#define go_ch1_dimmer

#define go_ch2_ 
//....

class Dimmer
{
public:
    Dimmer(int number);
    void setup();
    void init();
    void knxParam(int _ch_num);
    void setGroupObject();
    void setupCallback();
    void setStart();
    void loop();
    void cb_go_ch1_switch(GroupObject& go);
    void cb_go_ch1_reldim(GroupObject& go);
    void cb_go_ch1_absdim(GroupObject& go);
    void cb_go_ch1_color(GroupObject& go);


};

#endif
