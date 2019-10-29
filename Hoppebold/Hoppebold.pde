float xyskrump = 1;
float xyspeedC = 0;
float xyspeed = 10;
float xrect = 999;
float yrect = 499;
float xbounce = 999;
float ybounce = 499;

void setup() {
  size(1000, 1000);

}

void draw() {
  clear();
  background(55);
  fill(105);
  stroke(254);
  rect(0,0,xrect,ybounce);
  fill(256);
  ellipse (xyspeedC, xyspeedC, 32, 32);
  
  xrect = xrect - xyskrump;
  yrect = yrect - xyskrump;
  xyspeedC = xyspeedC + xyspeed;
  
  
  


//hop
if(xyspeedC+16>xbounce) {
  xyspeed*=-1; xyspeedC = xbounce -16; } 
 
  if(xyspeedC+16<0) {
  xyspeed*=-1; xyspeedC = 0 -16; } 
  
  if(xyspeedC+16>ybounce) {
  xyspeed*=-1; xyspeedC = xbounce -16; } 
 
  if(xyspeedC+16<0) {
  xyspeed*=-1; xyspeedC = 0 -16; }  
   
   xbounce = xbounce - xyskrump;
}
