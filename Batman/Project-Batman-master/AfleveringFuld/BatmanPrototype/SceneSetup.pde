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
