///@desc New Char
var font=0;

if(ord(_char)<128){
	font=0;
}else{
	font=1;
}

if(_char!=" "&&_char!="　"){
	draw_set_font(_group_font[_font,0]);
	var H1=string_height(" ");
	draw_set_font(_group_font[_font,font]);
	var H2=string_height(" ");
	var OFFSET=(H1-H2)/2*_scale_y;
	
	var INST=instance_create_depth(x+_char_x,y+_char_y+OFFSET,0,text_single);
	INST.text=_char;
	INST.font=_group_font[_font,font];
	INST.scale_x=_scale_x*_group_font_scale_x[_font,font];
	INST.scale_y=_scale_y*_group_font_scale_y[_font,font];
	INST.angle=_angle;
	INST.shadow=_shadow;
	INST.outline=_outline;
	INST.color_text[0]=_color_text[0];
	INST.color_text[1]=_color_text[1];
	INST.color_text[2]=_color_text[2];
	INST.color_text[3]=_color_text[3];
	INST.color_shadow[0]=_color_shadow[0];
	INST.color_shadow[1]=_color_shadow[1];
	INST.color_shadow[2]=_color_shadow[2];
	INST.color_shadow[3]=_color_shadow[3];
	INST.color_outline[0]=_color_outline[0];
	INST.color_outline[1]=_color_outline[1];
	INST.color_outline[2]=_color_outline[2];
	INST.color_outline[3]=_color_outline[3];
	INST.shadow_x=_shadow_x;
	INST.shadow_y=_shadow_y;
	INST.alpha=_alpha;
	INST.alpha_text=_alpha_text;
	INST.alpha_shadow=_alpha_shadow;
	INST.alpha_outline=_alpha_outline;
	INST.effect=_effect;
	INST.gui=_gui;
	INST.depth=_depth;
	ds_list_add(_list_inst,INST);
	
	if(!_voice_played&&!_skipping&&!_instant&&_voice>=0){
		var sound=_group_voice[_voice,irandom(array_length_2d(_group_voice,_voice)-1)];
		if(audio_exists(sound)){
			audio_stop_sound(sound);
			audio_play_sound(sound,0,false);
			_voice_played=true;
		}
	}
}

draw_set_font(_group_font[_font,font]);
_char_x+=(string_width(_char)+_group_font_space_x[_font,font]+_space_x)*_group_font_scale_x[_font,font]*_scale_x;

if(width<_char_x){
	width=_char_x;
}