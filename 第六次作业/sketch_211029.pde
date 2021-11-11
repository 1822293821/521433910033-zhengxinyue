int numPoints; 
Particle []particles; 
void setup(){
size(800, 500);
numPoints = 300;
particles = new Particle[ numPoints];

  for (int i = 0; i <  numPoints; i++)   
{
particles[i] = new Particle();
}

}

void draw(){
 background(0);
  for (int i = 0; i <  numPoints; i++) 
{ 
particles[i].draw();   
}
}

class Particle
{  float xPosition;   
  float yPosition;  
  float size;     
 float speedx;   
 float speedy;    

  Particle(){
 xPosition = random(0, width);      
 yPosition = random(0, height);       
 size = random(2, 8);      
 speedx = random(-2, 2);
 speedy = random(-2, 2);  
 }

  void draw(){
    if (size < 5)
    {
      fill(#FFFFFF);     
    }
    if (7.0 < size & size <8)
    {
 fill(#FF4B4B); 
 } else
{
  fill(125, 240, 240);    
}
if (dist(xPosition, yPosition, mouseX, mouseY) < 80)
{
  fill(#FFE600);    
}

    noStroke();

    ellipse(xPosition, yPosition, size, size);
    xPosition += speedx;
    yPosition += speedy;   

    if (xPosition < 0  )
    {xPosition = 0 ;
    speedx = -1 * speedx;
  }

    if (xPosition > width  ){
      xPosition = width ;
      speedx = -1 * speedx;
    }

    if (yPosition < 0 ) {
      yPosition = 0 ;
      speedy = -1 * speedy;
    }

    if (yPosition > height ){
      yPosition = height ;
      speedy = -1 * speedy;      
 }

    if (mousePressed) {
      float xdist = xPosition - mouseX;
      float ydist = yPosition - mouseY;
      xPosition -= xdist;
      yPosition -= ydist;    
    }

  }

}
