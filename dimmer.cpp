int ch_array = {ch_num}

void Dimmer::init()
{
pca.init;
}

void Dimmer:calculate()
{
    for ( int i=1 ; i<ch_num ; i++ )
    {
            ch_array[i].chType     = knx.param(0+i*10);
            ch_array[i].startDay   = knx.param(1+i*10);
            ch_array[i].startNight = knx.param(2+i*10);
            ch_array[i].stopDay    = knx.param(3+i*10);
            ch_array[i].stopNight  = knx.param(4+i*10);
            ch_array[i].timeDay    = knx.param(5+i*10);
            ch_array[i].timeNight  = knx.param(6+i*10);
    }
}

void Dimmer::setGroupObject()
{
go_ch1_switch 
}

void Dimmer::setupCallback()
{

  
}
