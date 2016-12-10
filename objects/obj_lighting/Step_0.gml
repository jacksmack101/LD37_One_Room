/// @description Insert description here
// You can write your code in this editor


glowSize += glowStep;

if(glowSize <=1){
glowStep = .005;
}else if (glowSize >= 1.3){
glowStep = -.005;
}

if(lightOff){
	if (alpha <.85){
		alpha += .05;
	}

}