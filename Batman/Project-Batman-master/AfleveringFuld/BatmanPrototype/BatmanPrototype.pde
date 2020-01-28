  PImage CardBack;
  PImage photo1;
  PImage photo2;
  PImage photo3;
  PImage photo4;
  PImage photo5;
  ArrayList<PImage> Card = new ArrayList<PImage>();
  int SceneNr = 0;
  int counter = 0;
  String[] KortLost = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
  String[] Kort = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
  String[] Bunke1;
  String[] Bunke2;
  PImage[] BBunke1;
  PImage[] BBunke2;
  PImage[] Billeder = new PImage[52];
  boolean kortIkkeBlandet = true;
  boolean FjernStart = true;
  int point =0;
  //import processing.sound.*;
  //SoundFile sample;
  boolean keyPressedVisKort = false;
  PImage Avatar;
  boolean FjernHalipha = true;
  PImage BagsidenAfKort;

void setup() {
  size(1000,1000);
  background(0, 102, 0);
  PFont font;
  
  font = createFont("batmfa__.ttf", 90);
  textFont(font);
  frameRate(60);
  int index =0;
  for (String k : Kort) {
    print(k + "   ");
    Billeder[index] = loadImage(k + ".png");
    index++;
  }
 
  photo1 = loadImage("Picture 1.png");
  photo2 = loadImage("pige.png");
  photo3 = loadImage("marco.png");
  photo4 = loadImage("haliphs.png");
  photo5 = loadImage("chris.png");
  
  Avatar = loadImage("Halipha.jpg");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  BagsidenAfKort = loadImage("Bagside af kort.png");
  println(" ");
  //PImage CardBack = loadImage("CardBack.png");

}


void draw(){
  //Vores forskellige scener Iscenesat(Hovedmenu-Vælg Avatar-Selve Spillet)
  if (SceneNr==1){
   Scene1Draw();
  }
  if (SceneNr==0){
   Scene0Draw();
  }
  if (SceneNr==2){
    counter = counter + 1;
    //println(counter);
    Scene2Draw();
  }
  
  
}
//image(CardBack, 100, 100, 500/1.5, 726/1.5);
 
void mouseReleased() {
  //Interaktion af vores forskellige Scener(Hovedmenu-Vælg Avatar-Selve Spillet)
if (SceneNr==1){
  mouse1Pressed();
}
if (SceneNr==0){
  mouse0Pressed();
}
if (SceneNr==2){
  mouse2Pressed();
}

}

void keyPressed() {
  // Selve Spillet - Exclusive
  if (SceneNr == 1) {
  keyPressedVisKort = true;
  }
}
