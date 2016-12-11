/// @description Insert description here
// You can write your code in this editor


glowSize += glowStep;
rotatePosition += 9;

if(glowSize <=1){
glowStep = .005;
}else if (glowSize >= 1.3){
glowStep = -.005;
}

if(lightOff){
	if (alpha <.65){
		alpha += .05;
	}

}