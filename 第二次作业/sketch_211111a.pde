void setup()
{ size(700,700);
  background(0);

}

void draw()
{
  for(int i =0;i<10;i++)
  {
    for(int j =0;j<10;j++)
      {

    color a = color(0, 0, i*20);
color b = color(i*20, j*20, 0);
color c = lerpColor(a, b, map(mouseX, 0, width, 0, 1));
fill(c);


     ellipse(80*i,80*j,60,60);
    
      }
  }
}
