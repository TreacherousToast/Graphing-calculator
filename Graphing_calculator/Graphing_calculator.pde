int max = 10;
int min = -max;
float spacing = 0.01;
int domainMagnitude = max-min;
void setup()
{
  size(640,640);
}
void draw()
{
  background(0);
  stroke(255);
  for (float x = min; x <= max; x+=spacing)
  {
    float y = sqrt(25-sq(x));
    point(((x+max)/domainMagnitude)*width,height-((y+max)/domainMagnitude)*height);  
  }
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  stroke(255);
  textSize(24);
  for (int i = min; i <= max; i++)
  {
    text(str(i),i*((width/2)/max)+width/2,height/2);
    if (i != 0)
    {
      text(str(-i),width/2,i*((height/2)/max)+height/2);
    }
  }
}
