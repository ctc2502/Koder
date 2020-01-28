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

void Scene1Draw()  {
  // Selve Spillet - Iscenesat
  clear();
  stroke(250);
  noFill();
  rectMode(CENTER);
  rect(width/2, height/2, 150, 150);

  fill(255);
  if (FjernStart) {
    textSize(30);
    text("Start", 440, 500);
    textSize(20);

    text("Tryk Start og derefter enter for at starte spil", 150, 620);
  } else {

    noStroke();
    fill(0, 102, 0);
    rect(30, 30, 2000, 2000);
  }

  if (keyPressedVisKort) {
    OpdelIBunker();
  }

  if (FjernHalipha) {

    Avatar.resize(0, 300);
    image(Avatar, 500, 200);
  }
}

void Scene2Draw() {
  // Vælg Avatar - Iscenesat
  noStroke();
  fill(250);

  textSize(50);
  textAlign(400);
  text("Vælg En Avatar", 230, 150);
  image(photo1, 300, 430, 200, 200);
  image(photo2, 700, 400, 200, 200);
  image(photo3, 400, 600, 200, 200);
  image(photo4, 500, 400, 200, 200);
  image(photo5, 600, 600, 200, 200);
  
  
}

void Scene0Draw()  {
  // Hovedmenu - Iscenesat
  imageMode(CENTER);
  rectMode(CENTER);
  String[] Startspil = {"Startspil.png", "Startspilon.png"};
  String[] Options = {"Options.png", "Optionson.png"};
  if ((mouseX<width/2+1621/3/2)&&(mouseX>width/2-1621/3/2)&&(mouseY>height/2-885/3/2)&&(mouseY<height/2+885/3/2)){
    image(loadImage(Startspil[1]), width/2,height/2, 1621/3, 885/3); // Startspil knap lyser
  } else{
    clear();
    image(loadImage(Startspil[0]), width/2,height/2, 1621/3, 885/3); // Startspil knap forholder normal
  };
  
  if ((mouseX<275+50)&&(mouseX>275-50)&&(mouseY>680-50)&&(mouseY<680+50)){
    image(loadImage(Options[1]), 275, 680, 100, 100);
    println(random(0,3)); // Options knap lyser
  } else{
    image(loadImage(Options[0]), 275, 680, 100, 100); // Options knap forholder normal
  }
  
  image(loadImage("Botman.png"), 0-200, height/2); // Billedet af Batman
  image(loadImage("Joker.png"), width-25, height/2+100); // Billedet af Joker
  
}

void mouse1Pressed()  {
  // Selve Spillet - Interaktion
  if ((mouseX<width/2+150/2)&&(mouseX>width/2-150/2)&&(mouseY>height/2-150/2)&&(mouseY<height/2+150/2)) {
    //Bland Kort
    FjernStart = false;
    FjernHalipha = false;
    BlandKort();
  }
}

void mouse0Pressed() {
  // Hovedmenu - Interaktion
  if ((mouseX<width/2+1621/3/2)&&(mouseX>width/2-1621/3/2)&&(mouseY>height/2-885/3/2)&&(mouseY<height/2+885/3/2))
  //Hovedmenu -> Vælg Avatar
  {
    println("Loading Game...");
    println("Loading Complete!");
    clear();
    SceneNr = 2;
  }
  
  if ((mouseX<275+50)&&(mouseX>275-50)&&(mouseY>680-50)&&(mouseY<680+50)){
    //Optionsknap(Ingen funktion)
    clear();
    SceneNr = 3;   
  }
}
void mouse2Pressed(){
  //Vælg Avatar - Interaktion
  if ((mouseX<500+100)&&(mouseX>500-100)&&(mouseY>400-200)&&(mouseY<400+200)&&(counter>50)){
    //Vælg Avatar -> Selve Spillet
    clear();
    SceneNr = 1;
    println("Initializing Game");
  }
  
}

void BlandKort() {
//Kortene blandes

  for (int g=0; g<1000; g++) {
    int index1 = 0;

    for (int i = 0; i < 52; i++) {
      int index2 = (int)random(0, 52);
      String Kort1 = Kort[index1];
      PImage Photo1 = Billeder[index1];
      String Kort2 = Kort[index2];
      PImage Photo2 = Billeder[index2];
      Kort[index1]=Kort2;
      Billeder[index1] = Photo2;
      Kort[index2]=Kort1;
      Billeder[index2] = Photo1;
      index1 = index1 +1;

      //println(Kort[index1]);
      // println(Kort[index2]);
    }
  }

  println("   ");
  for (String k : Kort)
    print(k+ "  ");

  println("  ");
}




void OpdelIBunker() {
  // Opdeler vores blandet kort i bunker af 2.
  kortIkkeBlandet = false;
  FjernStart = false;
  FjernHalipha = false;
  Bunke1 = subset(Kort, 0, 26);

  println("");
  println("Bunke1*********************************************** *********** ********* ******** ******");

  for (String k : Bunke1)
    print(k+ "  ");

  println(" ");

  BBunke1 = (PImage[])subset(Billeder, 0, 26);
  println("");
  println("BBunke1*********************************************** *********** ********* ******** ******");

  // for (String k : BBunke1)
  // print(k+ "  ");


  Bunke2 = subset(Kort, 26, 26);
  println("");
  println("Bunke2*********************************************** *********** ********* ******** ******");
  for (String k : Bunke2)print(k+ "  ");


  BBunke2 =(PImage[])subset(Billeder, 26, 26);
  println("");
  println("BBunke2*********************************************** *********** ********* ******** ******");

  //for (String k : BBunke2)
  // print(k+ "  ");


  print(Bunke1[0]);
  image(BBunke1[0], 500, 750, 500/2, 726/2);
  print(Bunke2[0]);
  image(BBunke2[0], 500, 250, 500/2, 726/2);

  image(BagsidenAfKort, 120, 250, 500/2, 726/2);
  image(BagsidenAfKort, 130, 250, 500/2, 726/2);
  image(BagsidenAfKort, 140, 250, 500/2, 726/2);

  image(BagsidenAfKort, 860, 750, 500/2, 726/2);
  image(BagsidenAfKort, 870, 750, 500/2, 726/2);
  image(BagsidenAfKort, 880, 750, 500/2, 726/2);
}

int hvorMangePoint(String Kort) {
//Pointsystem - Under Construction
  String[] kortDele = split(Kort, '_');
  String v= kortDele[1];

  if (v.equals("2")) {
    point =2;
  }

  if (v.equals("3")) {
    point =3;
  }

  if (v.equals("4")) {
    point =4;
  }

  if (v.equals("5")) {
    point =5;
  }

  if (v.equals("6")) {
    point =6;
  }

  if (v.equals("7")) {
    point =7;
  }

  if (v.equals("8")) {
    point =8;
  }

  if (v.equals("9")) {
    point =9;
  }

  if (v.equals("10")) {
    point =10;
  }

  if (v.equals("J")) {
    point =11;
  }

  if (v.equals("Q")) {
    point =12;
  }

  if (v.equals("K")) {
    point =13;
  }

  if (v.equals("es")) {
    point =14;
  }
  return 0;
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
