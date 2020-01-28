class flue {
  float x ;
  float y ;
  float s;
  float l=100;
PImage p =loadImage("Flue 2.png");
  flue(float xp, float yp, float s1) {
    x = xp;
    y = yp;
    s = s1;
  }

  void vis() {


    float r = random(0, 2);
    float r2 = random(0, 2);
    image(p, x+ r, y + r2, l, l);
  }
  
    void bevaeg() {
y = y + s;
}
}

void breddere(){
 void keypressed 
}
