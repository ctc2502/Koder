float XstorrelseY = 50;
float XpostionY = 50;
float value;
color red = color(255,0,0);
void setup() {
  size(1000, 1000);
 

}

void draw() {
  background(55);
  fill(value);
  rect(XpostionY,XpostionY,XstorrelseY,XstorrelseY);
  fill(value);
  rect(XpostionY*2,1,XstorrelseY,XstorrelseY);
  
}

void mousePressed()
  {
  if(value==255)
  {
    value = red;
  }
  else
  {
    value=255;
  }
}
