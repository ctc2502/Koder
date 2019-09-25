void setup() {
  size(1000, 1000, P3D);
}


void draw() {

  clear();
  background(255, 205, 255);


  //loop
  for (int j=1; j<=10; j++) {
    for (int k=1; k<=10; k++) {
      for (int l=1; l<=10; l++) {
        float r = random(-3, 3);
        fill(j + k, j * k, j * k);
        box(50 + k * 50 + r, 50 + j *50 + r, 50);
      }
    }
  }
}
 
