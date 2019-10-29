class Block {
  
  PVector pos;
  color[] colors = new color[6];
  Block(PVector pos) {
    this.pos = pos;
    setColors();
  }
  
  void setColors() {
    colors[0] = color(255);
    colors[1] = color(255,255,0);
    colors[2] = color(0,0255);
    colors[3] = color(0,255,0);
    colors[4] = color(200,200,0);
    colors[5] = color(255,0,0);
  }
  void drawFace(int faceNo
}
