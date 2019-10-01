//terning
int antal_1 = 0;
int antal_2 = 0;
int antal_3 = 0;
int antal_4 = 0;
int antal_5 = 0;
int antal_6 = 0;
int terningslag = 0;

void setup() {
size(400, 400);

for (int x = 1; x < 100; x++) {
  terningslag = (int)random(1, 7);
  
  if (terningslag == 1){
    antal_1 = antal_1 + 1;
  }
   if (terningslag == 2){
    antal_2 = antal_2 + 1;
   }
     if (terningslag == 3){
    antal_3 = antal_3 + 1;
     }
    if (terningslag == 4){
    antal_4 = antal_4 + 1;
    }
    if (terningslag == 5){
    antal_5 = antal_5 + 1;
    }
    if (terningslag == 6){
    antal_6 = antal_6 + 1;
    }
    }

println("noice 1" + antal_1);
println("noice 2" + antal_2);
println("noice 3" + antal_3);
println("noice 4" + antal_4);
println("noice 5" + antal_5);
println("noice 6" + antal_6);
    }

void draw(){
  background(0);
  fill(255,200,0);
  rect(50,200,45,-antal_1*5);
  fill(255,250,0);
  rect(100,200,45,-antal_2*5);
  fill(255,0,0);
  rect(150,200,45,-antal_3*5);
  fill(255,230,0);
  rect(200,200,45,-antal_4*5);
  fill(255,0,0);
  rect(250,200,45,-antal_5*5);
  fill(255,0,0);
  rect(300,200,45,-antal_6*5);
  
  textSize(20);
  
  fill(255,255,255);
  text(antal_1,70,200 - antal_1*5);
  text(antal_2,120,200 - antal_2*5);
  text(antal_3,170,200 - antal_3*5);
  text(antal_4,220,200 - antal_4*5);
  text(antal_5,270,200 - antal_5*5);
  text(antal_6,320,200 - antal_6*5);
  
}
