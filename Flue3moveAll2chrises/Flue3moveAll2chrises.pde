ArrayList<Flue> flueListe = new ArrayList<Flue>();

void setup(){
  size(500,500);
 
}

void draw(){

   
    background(100);
  for(int i=0; i<flueListe.size(); i++){
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
  }
}

void keyPressed(){
  if(key=='e'){  
  flueListe.add(new Flue(2));

 if(key=='r'){ 
flueListe.add(new Flue());
}


}}

void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY));
}

/////////////////////////////////////////////////////////
class Flue{
  
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  float fluescale = 1;
  
  //float xnusted =cos(vinkel) *distanceFlyttet: 
  //float ynusted =sin(vinkel) *distanceFlyttet: 
  //if (positionX+xnusted>500||
  //positionX+xnusted<0||
  //positionY+ynusted>500||
  //positionY+ynusted<00)||{
  
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
  }
  
  Flue(float a, float b){
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }
   Flue(float scale){
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
    fluescale=scale;
  }
  
  void flyt(){
    distanceFlyttet = distanceFlyttet + 0.5;
    
    float xnusted =cos(vinkel) *distanceFlyttet;
    float ynusted =sin(vinkel) *distanceFlyttet;
    if (positionX+xnusted>500||
    positionX+xnusted<0||
    positionY+ynusted>500||
    positionY+ynusted<0){
      positionX += xnusted;
      positionY += ynusted;
      vinkel *= PI;
      distanceFlyttet = 0;
    }
  
  }

  void tegnFlue(){
    pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0);
      scale(fluescale);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
