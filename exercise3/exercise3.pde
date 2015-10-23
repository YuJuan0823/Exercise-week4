float x=0;
float height1,height2=160.0;
float inc=TWO_PI/9.0;
float a=0.0;
PImage restart;
int gameState;
final int GAME_RUN=1;
final int GAME_END=2;
void setup()
{ frameRate(10);
  size(480,480);
  background(255);
  gameState=GAME_RUN;
  restart=loadImage("img/restart.png");
  mouseX=15;
  mouseY=15;
}

void draw()
{switch(gameState){
  
 case GAME_RUN:
 background(255);
 fill(255,0,0);
 ellipse(mouseX,mouseY,30,30);
 
 for(x=40;x<440;x+=40){
 fill(119,193,215);
 rect(x,0,40,180-sin(a)*30.0);
 rect(x,300-sin(a)*30.0,40,height);
 a+=inc;
 }
 
 if(mouseX>=40 && mouseX<=440){
 if(mouseY-15<180-sin(a)*30.0|| mouseY+15>300-sin(a)*30.0){
 switch(gameState){
 case GAME_RUN:
 gameState=GAME_END;
 }
 }
 }  
 break;
 
 case GAME_END:
 background(255);
 image(restart,0,0);
 if(mouseX>0 && mouseX<40 && mouseY>0 && mouseY<40){
 if(mousePressed){
 switch(gameState){
 case GAME_END:
 gameState=GAME_RUN;
 break;
 }
 }
 }
 break;
}

}
