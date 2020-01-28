String[] Kort = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
String[] KortLost = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
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

void setup() {
  size(1000, 1000);
  background(0, 102, 0);
  // sample = new SoundFile(this, "sample.mp3");
  // sample.play();
  // sample.amp(1);
  // sample.jump(30);


  int index =0;
  for (String k : Kort) {
    print(k + "   ");
    Billeder[index] = loadImage(k + ".png");
    index++;
  }
  println(" ");
}

void draw() {
  fill(255);
  rectMode(CENTER);
  if (kortIkkeBlandet)  
    rect(width/2, height/2, 150, 150);

  fill(255, 0, 0);
  if (FjernStart) {

    text("Start", 470, 510);
    textSize(30);

    text("Tryk Start og derefter enter for at starte spil", 150, 700);
  }else{
    noStroke();
    fill(0,102,0);
    rect(200,200,1300,1300); 
  }
}


void mouseReleased() {  

  if ((mouseX<width/2+150/2)&&(mouseX>width/2-150/2)&&(mouseY>height/2-150/2)&&(mouseY<height/2+150/2)) {
    FjernStart = false;
    BlandKort();
  }
}

void keyPressed() {
  OpdelIBunker();
}


void BlandKort() {


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


// Opdeler vores blandet kort i bunker af 2.

void OpdelIBunker() {
  kortIkkeBlandet = false;
  FjernStart = false;
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

  print(Bunke1[3]);

  print(Bunke2[3]);
  image(BBunke2[3], 650, 50);
}

// Giver værdi til div. kort

int hvorMangePoint(String Kort) {

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
