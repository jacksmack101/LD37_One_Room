/// @description Insert description here
// You can write your code in this editor

if(time < text_length){
	time += spd;
	print = string_copy(text, 0, time);

}

//render textbox

draw_set_alpha(alpha);
if(alpha < 1 && alphaIn<100){
alpha += spd/10;
}else if alphaIn<100{
	alpha = 1;
	alphaIn++;
	
}else{
	alpha -= .2;
}

draw_set_font(font);
draw_set_colour(c_gray);
draw_rectangle(x,y,x+boxWidth,y+boxHeight,false);

draw_set_colour(c_black);
draw_rectangle(x,y,x+boxWidth,y+boxHeight,true);


draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext
(
	x + padding,
	y+padding,
	print,
	font_size + (font_size/2),
	maxLength

);
draw_set_alpha(1);