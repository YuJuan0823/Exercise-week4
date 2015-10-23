float x=0;
float height1,height2=160.0;
float inc=TWO_PI/10.0;
float a=0.0;
void setup()
{
  size(480,480);
  background(255);
  frameRate(10);
}

void draw()
{background(255);

 for(x=48;x<432;x+=48){
 fill(119,193,215);
 rect(x,0,48,160-sin(a)*50.0);
 rect(x,height,48,-160-sin(a)*50.0);
 a+=inc;
 }
 
}
