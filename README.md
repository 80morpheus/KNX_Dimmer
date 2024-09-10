# KNX Dimmer

W = Single
CW = Cold/Warm White
RGB = RGB
RGBW = RGB+White
RGBCW = RGB+Cold/Warm White

Possible outputs:
3X  RGBCW
or
4x  RGBW
or
5X  RGB
or
8X  CW
or
16X W


CH1  S CW RGB RGBW RGBCW 
CH2  S CW RGB RGBW RGBCW 
CH3  S CW RGB RGBW RGBCW 
CH4  S CW RGB RGBW  
CH5  S CW RGB  
CH6  S CW      
CH7  S CW      
CH8  S CW      
CH9  S        
CH10 S        
CH11 S        
CH12 S        
CH13 S        
CH14 S        
CH15 S        
CH16 S         


# dimm bedingung
wenn abs oder rel dimmen dann nur bis min wert
wenn ausschalten, dann aus und optional farbwerte auf standard zurück setzen

single ist easy -> zwischen min und max

cw -> ginge auch zwischen min und max
      cw werte ??? müßte zwei min um evtl aus zu vermeiden
      ets eingabe farbtemp für c + w
      ets regler für temperatur gibt prozentual an welche der beiden wo steht
      links = nur c wird gesteuert und w ist dann 0
      mitte = beide selber wert
      rechts = nur w wird gesteuert und c ist dann 0

rgb -> dimmt nur von 0 bis setpoint
      min wert macht keinen sinn da dann zu komplizierte berechnungen

rgbw -> siehe rgb
      wie wird w behandelt ??? einzelnes licht objekt

rgbcw -> wie wird c und w behandelt ??? einzelnes licht objekt
      ets eingabe farbtemp für c + w
      ets standard wert - wird nach aus wieder aktiv ja/nein
      rgb dimmt von 0 bis setpoint

