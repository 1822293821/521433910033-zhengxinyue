void setup()
{ size(700,700);
  background(255);
strokeWeight(10);
rect(0,0,100,700);
rect(0,500,700,700);
}

void draw()
{ 
color a = color(0);
color b = color(255);
color c = lerpColor(a, b, map(mouseX, 0, width, 0, 1));
fill(c);

rect(500,0,200,200);
fill(mouseX/2);
rect(0,0,100,100);


fill(mouseY/2);
rect(0,200,500,500);

 fill(0);


 
}
