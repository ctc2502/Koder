class Knap{
   
 float x =100;
 float y=100;
 float Hight = 75;
 float weight = 150;

 int p=00;
 
 
 void trykketknap(){
   
 
    if ((mouseX<x+weight/2)&&(mouseX>x-weight/2)&&(mouseY>y-Hight/2)&&(mouseY<y+Hight/2)) 
    {
      println("100$ er tilføjet til  konto");
      p = p+ 100;
    }
    if ((mouseX<x+weight/2)&&(mouseX>x-weight/2)&&(mouseY>y+200-Hight/2)&&(mouseY<y+200+Hight/2)) 
    {
      println("100$ er fjernet fra konto");
    p = p- 100;
    }
      }
 void knappen(){
   fill(0,200,200);
   rect(x,y,weight,Hight);
    fill(0,200,200);
   rect(x,y+200,weight,Hight);
   fill(250,0,0);
   textSize(0);
   text(p+"kr.",x,y+400);
   fill(200,0,0);
   textSize(30);
   text("+100 kr.",x,y);
   textSize(30);
   text("-100 kr.",x,y+200);
   
  
  
  
}}
