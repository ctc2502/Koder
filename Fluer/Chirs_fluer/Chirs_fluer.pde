ArrayList<flue> mineFlue = new ArrayList <flue>();
flue f;

void setup() {
  size(1000, 1000);
}

void draw() {

  clear();
  background(250);
  clear();
  for (flue f : mineFlue) {
    f.vis(); 
    f.bevaeg();
   }
}

void mousePressed() {
   mineFlue.add(new flue(mouseX,mouseY, random(-30,30) ));
}
void keyPressed() {
   mineFlue.add(new flue(mouseX,mouseY, random(-30,30) ));
   
}
