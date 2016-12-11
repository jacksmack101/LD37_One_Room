//scr_text("Text",speed,x,y);

txt = instance_create(argument[2], argument[3], obj_text);

with(txt){
	padding = 16;
	maxLength = 924;
	text = argument[0];
	spd = argument[1];
	font = fnt;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text, font_size + (font_size/2),maxLength);
	text_height = string_height_ext(text,font_size + (font_size/2),maxLength);

	boxWidth = text_width + (padding*2);
	boxHeight = text_height + (padding*2);
	
	depth = -10000;
}

	




