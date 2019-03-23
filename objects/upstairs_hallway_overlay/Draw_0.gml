var factor=1*(Player_GetPlot()>=PLOT.SLEPT ? 1.25 : 1);
draw_sprite_ext(spr_window_shadow,0,0,80,1,1,0,c_white,1*factor);
draw_sprite_ext(spr_pixel,0,0,180,room_width,40,0,c_black,76/255*factor);
draw_sprite_ext(spr_pixel,0,0,0,room_width,room_height,0,c_black,157/255*factor);