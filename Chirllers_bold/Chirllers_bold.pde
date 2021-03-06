// dette er variablerne til cordinaterne hos bolden
int ballX = 0, ballY = 0;

// dette er boxen cordinater
int boxX = 0, boxY = 0;

// dette er radiusen på bolden
int rad= 24;

// dette er boxen størrelse
int boxSize = 500;

// dette er farten på bolden
int xSpeed = 6, ySpeed = 5;

// dette er det der boxen holder sig i midten
int a = 1;

//dette gøre boxen mindre/ større
int b = 2;


void setup () {
  // her sætter jeg størrelsen af vinduet
  size(500, 500);
}

void draw () {
  // her sætter jeg farven på bagrunden og laver den hver gang jeg tegner skærmen
  background(0);

  // dette rykker bolden
  ballX += xSpeed;

  // dette får boxen til at blive mindre
  boxX += a;
  boxY += a;
  boxSize -= b;

  // dette holder bolden inden for boxen
  if (ballX> boxSize + boxX || ballX< boxX) {
    xSpeed *= -1;
  }

  if (ballX> boxSize + boxX) {
    ballX -= 10;
  }
  if (ballX< boxX) {
    ballX += 10;
  } 

  ballY += ySpeed;
  if (ballY> boxSize + boxY ||ballY< boxY) {
    ySpeed *= -1;
  } 

  if (ballY> boxSize + boxY) {
    ballY -= 10;
  }
  if (ballY< boxY) {
    ballY += 10;
  }




  // dette er farven og hvor boxen bliver tegnet være gang den tegner skærmen
  fill(0);
  stroke(204, 102, 0);
  rect(boxX, boxY, boxSize, boxSize);
  // detter er farven og hvor bloden bliver tegnet været skærm
  fill(250);
  noStroke();
  ellipse(ballX, ballY, rad, rad);

  //gøre at boxen holder sin størrelse 
  if (boxSize < 40 || boxSize > 550 ) {
    a *= -1;
    b *= -1;
  }
}
