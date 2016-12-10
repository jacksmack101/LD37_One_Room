/// @description Insert description here
// You can write your code in this editor

surface_set_target(lightsOutSurf);
draw_clear(c_black);

//draw glow
with(obj_flicker){
	gpu_set_blendmode(bm_src_color);
	draw_sprite_ext(spr_glow,0,x,y,obj_lighting.glowSize,obj_lighting.glowSize,0,c_white,.7);
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();
draw_surface_ext(lightsOutSurf,0,0,1,1,0,c_white,alpha);