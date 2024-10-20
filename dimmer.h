
#include <Arduino.h>
#include <knx.h>

#ifndef Dimmer_h
#define Dimmer_h

#define go_ch01_switch knx.getGroupObject(10)
#define go_ch01_reldim knx.getGroupObject(11)
#define go_ch01_absdim knx.getGroupObject(12)
#define go_ch01_color  knx.getGroupObject(13)
#define go_ch01_temp   knx.getGroupObject(14)
#define go_ch01_state  knx.getGroupObject(15)
#define go_ch01_dimmer knx.getGroupObject(16)

#define go_ch02_switch knx.getGroupObject(20)
#define go_ch02_reldim knx.getGroupObject(21)
#define go_ch02_absdim knx.getGroupObject(23)
#define go_ch02_color  knx.getGroupObject(24)
#define go_ch02_temp   knx.getGroupObject(25)
#define go_ch02_state  knx.getGroupObject(26)
#define go_ch02_dimmer knx.getGroupObject(27)

#define go_ch03_switch knx.getGroupObject(30)
#define go_ch03_reldim knx.getGroupObject(31)
#define go_ch03_absdim knx.getGroupObject(32)
#define go_ch03_color  knx.getGroupObject(33)
#define go_ch03_temp   knx.getGroupObject(34)
#define go_ch03_state  knx.getGroupObject(35)
#define go_ch03_dimmer knx.getGroupObject(36)

#define go_ch04_switch knx.getGroupObject(40)
#define go_ch04_reldim knx.getGroupObject(41)
#define go_ch04_absdim knx.getGroupObject(42)
#define go_ch04_color  knx.getGroupObject(43)
#define go_ch04_temp   knx.getGroupObject(44)
#define go_ch04_state  knx.getGroupObject(45)
#define go_ch04_dimmer knx.getGroupObject(46)

#define go_ch05_switch knx.getGroupObject(50)
#define go_ch05_reldim knx.getGroupObject(51)
#define go_ch05_absdim knx.getGroupObject(52)
#define go_ch05_color  knx.getGroupObject(53)
#define go_ch05_temp   knx.getGroupObject(54)
#define go_ch05_state  knx.getGroupObject(55)
#define go_ch05_dimmer knx.getGroupObject(56)

#define go_ch06_switch knx.getGroupObject(60)
#define go_ch06_reldim knx.getGroupObject(61)
#define go_ch06_absdim knx.getGroupObject(62)
#define go_ch06_color  knx.getGroupObject(63)
#define go_ch06_temp   knx.getGroupObject(64)
#define go_ch06_state  knx.getGroupObject(65)
#define go_ch06_dimmer knx.getGroupObject(66)

#define go_ch07_switch knx.getGroupObject(70)
#define go_ch07_reldim knx.getGroupObject(71)
#define go_ch07_absdim knx.getGroupObject(72)
#define go_ch07_color  knx.getGroupObject(73)
#define go_ch07_temp   knx.getGroupObject(74)
#define go_ch07_state  knx.getGroupObject(75)
#define go_ch07_dimmer knx.getGroupObject(76)

#define go_ch08_switch knx.getGroupObject(80)
#define go_ch08_reldim knx.getGroupObject(81)
#define go_ch08_absdim knx.getGroupObject(82)
#define go_ch08_color  knx.getGroupObject(83)
#define go_ch08_temp   knx.getGroupObject(84)
#define go_ch08_state  knx.getGroupObject(85)
#define go_ch08_dimmer knx.getGroupObject(86)

#define go_ch09_switch knx.getGroupObject(90)
#define go_ch09_reldim knx.getGroupObject(91)
#define go_ch09_absdim knx.getGroupObject(92)
#define go_ch09_color  knx.getGroupObject(93)
#define go_ch09_temp   knx.getGroupObject(94)
#define go_ch09_state  knx.getGroupObject(95)
#define go_ch09_dimmer knx.getGroupObject(96)

#define go_ch10_switch knx.getGroupObject(100)
#define go_ch10_reldim knx.getGroupObject(101)
#define go_ch10_absdim knx.getGroupObject(102)
#define go_ch10_color  knx.getGroupObject(103) 
#define go_ch10_temp   knx.getGroupObject(104)
#define go_ch10_state  knx.getGroupObject(105)
#define go_ch10_dimmer knx.getGroupObject(106)

#define go_ch11_switch knx.getGroupObject(110)
#define go_ch11_reldim knx.getGroupObject(111)
#define go_ch11_absdim knx.getGroupObject(112)
#define go_ch11_color  knx.getGroupObject(113)
#define go_ch11_temp   knx.getGroupObject(114)
#define go_ch11_state  knx.getGroupObject(115)
#define go_ch11_dimmer knx.getGroupObject(116)

#define go_ch12_switch knx.getGroupObject(120)
#define go_ch12_reldim knx.getGroupObject(121)
#define go_ch12_absdim knx.getGroupObject(122)
#define go_ch12_color  knx.getGroupObject(123)
#define go_ch12_temp   knx.getGroupObject(124)
#define go_ch12_state  knx.getGroupObject(125)
#define go_ch12_dimmer knx.getGroupObject(126)

#define go_ch13_switch knx.getGroupObject(130)
#define go_ch13_reldim knx.getGroupObject(131)
#define go_ch13_absdim knx.getGroupObject(132)
#define go_ch13_color  knx.getGroupObject(133)
#define go_ch13_temp   knx.getGroupObject(134)
#define go_ch13_state  knx.getGroupObject(135)
#define go_ch13_dimmer knx.getGroupObject(136)

#define go_ch14_switch knx.getGroupObject(140)
#define go_ch14_reldim knx.getGroupObject(141)
#define go_ch14_absdim knx.getGroupObject(142)
#define go_ch14_color  knx.getGroupObject(143) 
#define go_ch14_temp   knx.getGroupObject(144)
#define go_ch14_state  knx.getGroupObject(145)
#define go_ch14_dimmer knx.getGroupObject(146)

#define go_ch15_switch knx.getGroupObject(150)
#define go_ch15_reldim knx.getGroupObject(151)
#define go_ch15_absdim knx.getGroupObject(152)
#define go_ch15_color  knx.getGroupObject(153)
#define go_ch15_temp   knx.getGroupObject(154)
#define go_ch15_state  knx.getGroupObject(155)
#define go_ch15_dimmer knx.getGroupObject(156)

#define go_ch16_switch knx.getGroupObject(160)
#define go_ch16_reldim knx.getGroupObject(161)
#define go_ch16_absdim knx.getGroupObject(162)
#define go_ch16_color  knx.getGroupObject(163)
#define go_ch16_temp   knx.getGroupObject(164)
#define go_ch16_state  knx.getGroupObject(165)
#define go_ch16_dimmer knx.getGroupObject(166)
//....

class Dimmer
{
public:
    Dimmer(int number);
    void setup();
    void init();
    int initPCA9685();
    void initPCA9635PW();
    void setDimmer(int channel, int dimValue);
    void setPCA9685(int _channel, int dimVal);
    void setPCA9635PW(int _channel, int dimVal);
    void knxParam(int _ch_num);
    void setGroupObject();
    void setupCallback();
    void setStart();
    void loop();



    void cb_go_ch01_switch(GroupObject& go);
    void cb_go_ch01_reldim(GroupObject& go);
    void cb_go_ch01_absdim(GroupObject& go);
    void cb_go_ch01_color(GroupObject& go);
    void cb_go_ch01_temp(GroupObject& go);
    
    void cb_go_ch02_switch(GroupObject& go);
    void cb_go_ch02_reldim(GroupObject& go);
    void cb_go_ch02_absdim(GroupObject& go);
    void cb_go_ch02_color(GroupObject& go);
    void cb_go_ch02_temp(GroupObject& go);
    
    void cb_go_ch03_switch(GroupObject& go);
    void cb_go_ch03_reldim(GroupObject& go);
    void cb_go_ch03_absdim(GroupObject& go);
    void cb_go_ch03_color(GroupObject& go);
    void cb_go_ch03_temp(GroupObject& go);
    
    void cb_go_ch04_switch(GroupObject& go);
    void cb_go_ch04_reldim(GroupObject& go);
    void cb_go_ch04_absdim(GroupObject& go);
    void cb_go_ch04_color(GroupObject& go);
    void cb_go_ch04_temp(GroupObject& go);
    
    void cb_go_ch05_switch(GroupObject& go);
    void cb_go_ch05_reldim(GroupObject& go);
    void cb_go_ch05_absdim(GroupObject& go);
    void cb_go_ch05_color(GroupObject& go);
    void cb_go_ch05_temp(GroupObject& go);
    
    void cb_go_ch06_switch(GroupObject& go);
    void cb_go_ch06_reldim(GroupObject& go);
    void cb_go_ch06_absdim(GroupObject& go);
    void cb_go_ch06_color(GroupObject& go);
    void cb_go_ch06_temp(GroupObject& go);
    
    void cb_go_ch07_switch(GroupObject& go);
    void cb_go_ch07_reldim(GroupObject& go);
    void cb_go_ch07_absdim(GroupObject& go);
    void cb_go_ch07_color(GroupObject& go);
    void cb_go_ch07_temp(GroupObject& go);
    
    void cb_go_ch08_switch(GroupObject& go);
    void cb_go_ch08_reldim(GroupObject& go);
    void cb_go_ch08_absdim(GroupObject& go);
    void cb_go_ch08_color(GroupObject& go);
    void cb_go_ch08_temp(GroupObject& go);
    
    void cb_go_ch09_switch(GroupObject& go);
    void cb_go_ch09_reldim(GroupObject& go);
    void cb_go_ch09_absdim(GroupObject& go);
    void cb_go_ch09_color(GroupObject& go);
    void cb_go_ch09_temp(GroupObject& go);

    
    void cb_go_ch10_switch(GroupObject& go);
    void cb_go_ch10_reldim(GroupObject& go);
    void cb_go_ch10_absdim(GroupObject& go);
    void cb_go_ch10_color(GroupObject& go);
    void cb_go_ch10_temp(GroupObject& go);

    void cb_go_ch11_switch(GroupObject& go);
    void cb_go_ch11_reldim(GroupObject& go);
    void cb_go_ch11_absdim(GroupObject& go);
    void cb_go_ch11_color(GroupObject& go);
    void cb_go_ch11_temp(GroupObject& go);

    void cb_go_ch12_switch(GroupObject& go);
    void cb_go_ch12_reldim(GroupObject& go);
    void cb_go_ch12_absdim(GroupObject& go);
    void cb_go_ch12_color(GroupObject& go);
    void cb_go_ch12_temp(GroupObject& go);

    void cb_go_ch13_switch(GroupObject& go);
    void cb_go_ch13_reldim(GroupObject& go);
    void cb_go_ch13_absdim(GroupObject& go);
    void cb_go_ch13_color(GroupObject& go);
    void cb_go_ch13_temp(GroupObject& go);

    void cb_go_ch14_switch(GroupObject& go);
    void cb_go_ch14_reldim(GroupObject& go);
    void cb_go_ch14_absdim(GroupObject& go);
    void cb_go_ch14_color(GroupObject& go);
    void cb_go_ch14_temp(GroupObject& go);

    void cb_go_ch15_switch(GroupObject& go);
    void cb_go_ch15_reldim(GroupObject& go);
    void cb_go_ch15_absdim(GroupObject& go);
    void cb_go_ch15_color(GroupObject& go);
    void cb_go_ch15_temp(GroupObject& go);

    void cb_go_ch16_switch(GroupObject& go);
    void cb_go_ch16_reldim(GroupObject& go);
    void cb_go_ch16_absdim(GroupObject& go);
    void cb_go_ch16_color(GroupObject& go);
    void cb_go_ch16_temp(GroupObject& go);

};

class ChannelConfig
{
public:
	int chType;
  int todo; // 0=nothing todo --- 1=dimm off --- 2=dim on --- 3=dim to value --- =rgb
	int minDimDay;
	int minDimNight;
	int maxDimDay;
	int maxDimNight;
	int speedDay;
	int speedNight;
	int setpointFix[5];
	int keepSetpoint;
	int diffDimDay;
	int diffDimNight;
	int setpointTemp[5];
  int stairTime;
  int stairTrig;
  unsigned long int stairStart;
};

class ConfigKNX
{
public:
   int chip_type;
   int ch_num;
};

#endif
