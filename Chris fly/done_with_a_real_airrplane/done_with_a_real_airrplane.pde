int x = 50;
int y = 50;
int stripex = 65;


void setup(){
 size(1000, 1000);
 
  background(30,30,250);
  noStroke();

  
}

void draw(){
  background(30,30,250);
  fill(150);

  rect(50,700,900,50); 
  fill(250);
  
  rect(stripex,720,50,10);
  fill(250);
  rect(stripex+75,720,50,10);
   fill(250);
  rect(stripex+75*2,720,50,10);
   fill(250);
  rect(stripex+75*3,720,50,10);
   fill(250);
  rect(stripex+75*4,720,50,10);
   fill(250);
  rect(stripex+75*5,720,50,10);
  fill(250);
  rect(stripex+75*6,720,50,10);
   fill(250);
  rect(stripex+75*7,720,50,10);
   fill(250);
  rect(stripex+75*8,720,50,10);
   fill(250);
  rect(stripex+75*9,720,50,10);
    fill(250);
  rect(stripex+75*10,720,50,10);
   fill(250);
  rect(stripex+75*11,720,50,10);
  
  
  fill(250);
  
  image(loadImage("Flyver.png"), x,y,200,100);
  

  
   if (keyPressed) {
    if (key == 'd' || key == 'D') {
      x=x+10;
   
  
}
if (key == 's' || key == 'S') {
      y=y+10;
   }
 }
  if (keyPressed) {
  if (key == 'a' || key == 'A') {
      x=x-10;
   
  
}
if (key == 'w' || key == 'W') {
      y=y-10;
      
   
    
}}}

  
  
