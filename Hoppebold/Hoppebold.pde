
float circleX;
float xspeed = 10;
float xyrect = 1000;

void setup() {
  size(1000, 1000);
  circleX=0;

}

void draw() {
  background(55);
  fill(105);
  stroke(250);
  rect(100,100,xyrect,xyrect);
  rect(circleX, xyrect/2, 32, 32);
  
  xyrect = xyrect - 1;
  circleX = circleX + xspeed;
  
  
  if(circleX > xyrect || circleX <32){
    
    // turn around!
    xspeed = xspeed * -1;
}
} 
