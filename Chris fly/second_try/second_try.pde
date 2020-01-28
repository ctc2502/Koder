int x = 50;
int y = 100;

void setup(){
 size(1000, 1000);
  background(30,30,250);
  noStroke();

  
}

void draw(){
fill(250);
  rect(x,y,100,50);
  fill(150);
  rect(50,300,900,50);
  
   if (keyPressed) {
    if (key == 'd' || key == 'D') {
      x=x+50;
   
  
}
if (key == 's' || key == 'S') {
      y=y+50;
   }
 }
  if (key == 'a' || key == 'A') {
      x=x-50;
   
  
}
if (key == 'w' || key == 'W') {
      y=y-50;
    
}}
