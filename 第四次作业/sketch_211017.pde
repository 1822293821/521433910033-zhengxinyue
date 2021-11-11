

void setup() { 
  size(600, 600); 
  frameRate(5);  
} 
void draw() { 
 background(245);
 int  r = int(random(0, 4));  
   textSize(100);       
   if (r == 0) {         
    fill(57, 197, 187);    
    text("Y", 100, 300);  
  } 
   if (r == 1) {    
    fill(255, 165, 0);    
    text("E", 200, 300);  
  } 
   if (r == 2)  {             
    fill(255, 226, 17);      
    text("A", 300, 300);  
  } 
   if (r == 3) {               
    fill(255, 192, 203);      
    text("H", 400, 300);  
  } 



}
