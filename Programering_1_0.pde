Knap k;
ArrayList<Knap> knapper = new ArrayList<Knap>();

void setup() {  
  size(1000, 1000);
  rectMode(CENTER);
  textAlign(CENTER);
   k = new Knap();
  
}

void draw() {  
  clear();
  background(200);
  k.knappen();
}

void mouseReleased(){
        k.trykketknap();
        
}
