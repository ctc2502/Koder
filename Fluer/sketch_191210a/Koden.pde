class flue {
  float x ;
  float y ;
  float s;
PImage p =loadImage("Flue 2.png");
  flue(float xp, float yp, float s1) {
    x = xp;
    y = yp;
    s = s1;
  }

  void vis() {


    float r = random(0, 2);
    float r2 = random(0, 2);
    image(p, x+ r, y + r2, 100, 100);
  }
  
    void bevaeg() {
y = y + s;
}
}
