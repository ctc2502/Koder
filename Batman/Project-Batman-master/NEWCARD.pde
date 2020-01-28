PImage[] Card  = new PImage[52];
String[] Kort = new String[52];
int sidsteKortIndex = 51;


void setup(){
  size(1000,1000);
  imageMode(CENTER);
  String[] Kort = { "spar_es", "spar_2", "spar_3", "spar_4", "spar_5", "spar_6", "spar_7", "spar_8", "spar_9", "spar_10", "spar_J", "spar_Q", "spar_K", "hjerter_es", "hjerter_2", "hjerter_3", "hjerter_4", "hjerter_5", "hjerter_6", "hjerter_7", "hjerter_8", "hjerter_9", "hjerter_10", "hjerter_J", "hjerter_Q", "hjerter_K", "kløver_es", "kløver_2", "kløver_3", "kløver_4", "kløver_5", "kløver_6", "kløver_7", "kløver_8", "kløver_9", "kløver_10", "kløver_J", "kløver_Q", "kløver_K", "ruder_es", "ruder_2", "ruder_3", "ruder_4", "ruder_5", "ruder_6", "ruder_7", "ruder_8", "ruder_9", "ruder_10", "ruder_J", "ruder_Q", "ruder_K"};
for(int i=0; i < 52 ; i ++){
  Card[i] = loadImage(Kort[i] + ".png");
 
 println(Kort[i] + ".png");
 frameRate(60);
}

}

void draw(){

  rectMode(CENTER);
  rect(width/2,height/2, 150, 150);
}
  


void mouseReleased()
{
if ((mouseX<width/2+150/2)&&(mouseX>width/2-150/2)&&(mouseY>height/2-150/2)&&(mouseY<height/2+150/2))
    {
  int i=0;
  int i2 = 0;
  i = (int)random(0,52);
  i2 = (int)random(0,52);
  image(Card[i], width/2-250, height/2, 500/1.5, 726/1.5);
  image(Card[i2], width/2+250, height/2, 500/1.5, 726/1.5);
    }
}


String[] Blandet;
