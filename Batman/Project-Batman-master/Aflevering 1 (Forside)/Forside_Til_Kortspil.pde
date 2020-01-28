PImage CardBack;
  ArrayList<PImage> Card = new ArrayList<PImage>();
  int SceneNr = 0;

void setup() {
  size(1000,1000);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);
  String[] Kort = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
  for(int i=0; i < 52 ; i ++){
  Card.add(loadImage(Kort[i] + ".png"));
  }
  //PImage CardBack = loadImage("CardBack.png");

}


void draw(){
  if (SceneNr==1){
   Scene1Draw();
  }
  if (SceneNr==0){
   Scene0Draw();
  }
}
//image(CardBack, 100, 100, 500/1.5, 726/1.5);
 
void mouseReleased() {
if (SceneNr==1){
  mouse1Pressed();
}
if (SceneNr==0){
  mouse0Pressed();
}


}

void Scene1Draw()  {
  //Spillet selv
  fill(250);
  textSize(100);
  text(Card.size(), 100, 100);
}

void Scene0Draw()  {
  //Hovedmenu
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
    image(loadImage(Options[0]), 275, 680, 100, 100); // Startspil knap forholder normal
  }
  
  image(loadImage("Botman.png"), 0-200, height/2); // Billedet af Batman
  image(loadImage("Joker.png"), width-25, height/2+100); // Billedet af Joker
  
}

void mouse1Pressed()  {
  //Spillet selv
  if (Card.size() != 0){

  int index = (int)random(0,Card.size());
  int index2 = (int)random(0,Card.size());
  while(index == index2)
  {
    index = (int)random(0,Card.size());
  index2 = (int)random(0,Card.size());
  }

      clear(); 
  Card.get(index);
  Card.get(index2);

  image(Card.get(index), width/2-250, height/2, 500/1.5, 726/1.5);
  image(Card.get(index2), width/2+250, height/2, 500/1.5, 726/1.5);
  print(index+" ");
  print(index2+" ");
  if(index>index2){
  Card.remove(index);
    Card.remove(index2);
}
  else{
  Card.remove(index2);
    Card.remove(index);
  }}
  
  if ((mouseX<30)&&(mouseX>10)&&(mouseY>height-10)&&(mouseY<height-30))
  {
    println("Returning to main menu");
    clear();
    SceneNr = 0;
  }
}

void mouse0Pressed() {
  //Hovedmenu
  if ((mouseX<width/2+1621/3/2)&&(mouseX>width/2-1621/3/2)&&(mouseY>height/2-885/3/2)&&(mouseY<height/2+885/3/2))
  {
    println("Loading Game...");
    println("Loading Complete!");
    clear();
    SceneNr = 1;
  }
  
  if ((mouseX<275+50)&&(mouseX>275-50)&&(mouseY>680-50)&&(mouseY<680+50)){
    clear();
    SceneNr = 3;   
}
}
