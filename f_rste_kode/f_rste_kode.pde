int x = 100;
int y = 100;
void setup() {
  size(1000, 1000);
}


void draw() {
  background(155);
  ellipse(x, y+55, 75, 75); 
  ellipse(x, y, 55, 55); 
  fill(1, 150, 5);
  ellipse(x+15, y, 10, 10); 
  ellipse(x-15, y, 10, 10);
  rect(x-5, y+5, 10, 10); 
  fill(5, 100, 69); 
  x = x + 1;
  y = y + 1;
}
