float w=82;
color c=color(0, 0, 0);
float wi=2;
void setup() {
  size(1000, 1000);
  rectMode(CENTER);
  background(255);
}

void draw() {
  paint(40, 25, color(57, 197, 187));
  paint(40+w, 25, color(255, 165, 0));
  paint(40+2*w, 25, color(255, 226, 17));
  paint(40+3*w, 25, color(255, 192, 203));
  Weight();
  stroke(c);
  strokeWeight(wi);
  if (mousePressed&&mouseY>50) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void paint(float x, float y, color c) {
  noStroke();
  fill(c);
  rect(x, y, 80, 50);
}
void Weight() {
  fill(0);
  rect(425, 31, 40, 37);
  rect(513, 29, 60, 48);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(25);
  text("Big", 513, 29);
  textSize(13);
  text("Small", 425, 31);
}
void mousePressed() {
  if (abs(mouseX-40)<40&&abs(mouseY-25)<25) {
    c=color(57, 197, 187);
  }
  if (abs(mouseX-(40+w))<40&&abs(mouseY-25)<25) {
    c=color(255, 165, 0);
  }
  if (abs(mouseX-(40+w*2))<40&&abs(mouseY-25)<25) {
    c=color(255, 226, 17);
  }
  if (abs(mouseX-(40+w*3))<40&&abs(mouseY-25)<25) {
    c=color(255, 192, 203);
  }
  if (abs(mouseX-(513))<40&&abs(mouseY-33)<20) {
    wi=10;
  }
  if (abs(mouseX-(425))<40&&abs(mouseY-33)<20) {
    wi=2;
  }
}
