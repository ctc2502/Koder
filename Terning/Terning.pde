// variabler
int antal_1 = 0;
int antal_2 = 0;
int antal_3 = 0;
int antal_4 = 0;
int antal_5 = 0;
int antal_6 = 0;
int terningslag = 0;



// Random terninge 
void setup() {
  size(400, 200);

  for (int x = 1; x < 100; x++) {
    terningslag = (int)random(1, 7);

    if (terningslag == 1 ) {
      antal_1 = antal_1 + 1;
    }

    if (terningslag == 2 ) {
      antal_2 = antal_2 + 1;
    }

    if (terningslag == 3 ) {
      antal_3 = antal_3 + 1;
    }

    if (terningslag == 4 ) {
      antal_4 = antal_4 + 1;
    }

    if (terningslag == 5 ) {
      antal_5 = antal_5 + 1;
    }

    if (terningslag == 6 ) {
      antal_6 = antal_6 + 1;
    }
  }
  // Println 
  println("du har været så heldig at få 1 " + antal_1); 
  println("du har været så heldig at få 2 " + antal_2); 
  println("du har været så heldig at få 3 " + antal_3); 
  println("du har været så heldig at få 4 " + antal_4); 
  println("du har været så heldig at få 5 " + antal_5); 
  println("du har været så heldig at få 6 " + antal_6);
}



// diagram
void draw() {
  background(0);
  fill(255, 200, 0);
  rect(50, 200, 45, -antal_1 * 5);
  fill(255, 199, 0);
  rect(100, 200, 45, -antal_2* 5);
  fill(255, 198, 0);
  rect(150, 200, 45, -antal_3 * 5);
  fill(255, 197, 0);
  rect(200, 200, 45, -antal_4 * 5);
  fill(255, 196, 0);
  rect(250, 200, 45, -antal_5 * 5);
  fill(255, 100, 0);
  rect(300, 200, 45, -antal_6 * 5);

  textSize(20);

  //antallet over søjlerne
  fill(255, 255, 255);
  text(antal_1, 60, 200 - antal_1 * 5);
  text(antal_2, 110, 200 - antal_2 * 5);
  text(antal_3, 160, 200 - antal_3 * 5);
  text(antal_4, 210, 200 - antal_4 * 5);
  text(antal_5, 260, 200 - antal_5 * 5);
  text(antal_6, 310, 200 - antal_6 * 5);
}
