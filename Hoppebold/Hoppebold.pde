
float circleX;
float xspeed = 10;

void setup() {
  size(1000, 400);
  circleX=0;
}

void draw() {
  background(55);
  fill(105);
  stroke(250);
  ellipse(circleX, height/2, 32, 32);
  
  circleX = circleX + xspeed;
  
  if(circleX > width || circleX <0){
    // turn around!
    xspeed = xspeed * -1;
}
} 
