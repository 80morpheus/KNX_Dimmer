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
            ch_array[i].minDimDay   = knx.param(1+i*10);
            ch_array[i].minDimNight = knx.param(2+i*10);
            ch_array[i].maxDimDay    = knx.param(3+i*10);
            ch_array[i].maxDimNight  = knx.param(4+i*10);
            ch_array[i].timeDay    = knx.param(5+i*10);
            ch_array[i].timeNight  = knx.param(6+i*10);
            ch_array[i].tableDay = [5];  // RGBCW 
            ch_array[i].tableNight = [5];  // RGBCW
            ch_array[i].diffDimDay = ch_array[i].maxDimDay - ch_array[i].minDimDay;
            ch_array[i].diffDimNight = ch_array[i].maxDimNight - ch_array[i].minDimNight;
            
    }
}

void Dimmer::setGroupObject()
{
go_ch1_switch.dataPointType(DPT_Switch);
go_ch1_reldim.dataPointType(DPT_);
go_ch1_absdim.dataPointType(DPT_);
go_ch1_color.dataPointType(DPT_Colour_RGB);
go_ch1_state.dataPointType(DPT_Switch);
go_ch1_dimmer.dataPointType(DPT_);
}

void Dimmer::setupCallback()
{
        go_ch1_switch.callback(cb_go_ch1_switch);
        go_ch1_reldim.callback(cb_go_ch1_reldim);
        go_ch1_absdim.callback(cb_go_ch1_absdim);
        go_ch1_color.callback(cb_go_ch1_color);
  
}


void Dimmer::cb_go_ch1_switch(GroupObject& go)
{}
void Dimmer::cb_go_ch1_reldim(GroupObject& go)
{}
void Dimmer::cb_go_ch1_absdim(GroupObject& go)
{}
void Dimmer::cb_go_ch1_color(GroupObject& go)
{}
