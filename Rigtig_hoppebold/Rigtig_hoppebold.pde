// pladsen hvor bolden er
int Boldx = 100, Boldy = 100;

// firkantens plads
int Firkantx = 100, Firkanty = 100;

// Radisuen på bolden
int Radius= 50;

// Firkantens størrelse
int firkant = 500;

// Hastighed på bold
int xSpeed = 3, ySpeed = 10;

// Boldens plads i midten
int Pladsa = 2;

// Firkantens størrelse forandring
int Pladsb = 3;


void setup () {
  size(1000, 1000);
}

void draw () {
  background(0);

  //boldens movement
  Boldx += xSpeed;

  // størrelsen på firkanten bliver mindre
  Firkantx += Pladsa;
  Firkanty += Pladsa;
  firkant -= Pladsb;

  // Firkanten holder bolden inden i sig
  if (Boldx> firkant + Firkantx || Boldx< Firkantx) {
    xSpeed *= -1;
  }

  if (Boldx> firkant + Firkantx) {
    Boldx -= 10;
  }
  if (Boldx< Firkantx) {
    Boldx += 10;
  } 

  Boldy += ySpeed;
  if (Boldy> firkant + Firkanty ||Boldy< Firkanty) {
    ySpeed *= -1;
  } 

  if (Boldy> firkant + Firkanty) {
    Boldy -= 10;
  }
  if (Boldy< Firkanty) {
    Boldy += 10;
  }




  // Firkantens størrelse og farve
  fill(200,200,250);
  stroke(204, 102, 10);
  rect(Firkantx, Firkanty, firkant, firkant);
  // Boldens størrelse og farve
  fill(250,166,100);
  noStroke();
  ellipse(Boldx, Boldy, Radius, Radius);

  //Størrelsen på firkant beholdes
  if (firkant < 40 || firkant > 900 ) {
    Pladsa *= -1;
    Pladsb *= -1;
  }
}
