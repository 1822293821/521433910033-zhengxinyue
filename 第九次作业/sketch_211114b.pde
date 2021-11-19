int maxTime = 400;
int strokesPerFrame = 25;
String[] imgNames = {"1.jpg", "2.jpg", "3.jpg"};

PImage img;
int imgIndex = 1;
float brightnessShift;

void setup() {
  size(950, 700);
  colorMode(HSB, 255);
  nextImage();
  
}
void draw() {
  translate(width/2, height/2);
  
  for (int i = 0; i < strokesPerFrame; i++) {
    int index = int(random(img.width*img.height));
    color pixelColor = img.pixels[index];
    pixelColor = color(red(pixelColor), green(pixelColor), blue(pixelColor), 255);

    int x = index%img.width;
    int y = index/img.width;
    pushMatrix();
    translate(x-img.width/2, y-img.height/2);
    
    if (frameCount % 5 == 0) {
      paintDot(pixelColor, int(random(2, 20)*map(frameCount, 0, maxTime, 1, 0.5)));
    } else {
      paintStroke(random(150, 250), pixelColor, int(random(2, 8)*map(frameCount, 0, maxTime, 1, 0.1)), map(frameCount, 0, maxTime, 40, 5));
    }

    popMatrix();
  }
  if (frameCount > maxTime) {
    noLoop();
  }
}
void mousePressed() {
  nextImage();
}


void nextImage() {

  background(255);
  loop();
  frameCount = 0;

  brightnessShift = random(255);
  imgIndex++;
  if (imgIndex >= imgNames.length) {
    imgIndex = 0;
  }
  img = loadImage(imgNames[imgIndex]);
  img.resize(width,height);
  img.loadPixels();
}


void paintStroke(float strokeLength, color strokeColor, int strokeThickness, float length) {
  float b = brightness(strokeColor);
  
  float bShift = b+brightnessShift;
  if (bShift > 255) {
    bShift -= 255;
  }
  
  pushMatrix();
  rotate(radians(map(b, 0, 255, -180, 180)));
  
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 100), 50);
  line(-length, 1, length, 1);
  
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 255));
  strokeWeight(strokeThickness);
  line(-length, 0, length, 0);
  
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 150, 255), 20);
  line(-length, 2, length, 2);
  popMatrix();
}

void paintDot(color strokeColor, int strokeThickness) {
  float b = brightness(strokeColor);  
  float bShift = b+brightnessShift;
  if (bShift > 255) {
    bShift -= 255;
  }
 
  pushMatrix();
  rotate(radians(random(-180, 180)));
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 255));
  strokeWeight(strokeThickness);
  line(0, 0, 5, 0);
  popMatrix();
}
