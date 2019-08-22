//Dette skulle være løsningen på "Creature Walk", men der er noget galt!
//
//Opgave 1: Læs programmet med en ven og find ud af hvordan koden fungerer
//Opgave 2: Boldens øjne bevæger sig og forstørres forkert. Det skal rettes
//Opgave 3: Bolden hopper ikke op og ned. Det skal fikses (hint: se ballwalk)
//Opgave 4: Skriv kode-kommentarer, der forklarer dine rettelser og upload til gitHub.
//Opgave 5: Aflever dokument med link på lectio (lectio registrerer ikke en kommentar som aflevering)

int   ballX             = 100 ,  ballY             = 100;
int   eyeLeftRelativeX  = 5   ,  eyeLeftRelativeY  = 5;
// ændret int til float på den under
float   eyeRightRelativeX = 20  ,  eyeRightRelativeY = 5;   
int   speedX            = 1   ,  speedY            = 2;
float ballSize          = 50;
float eyeSize           = 5;
float zoomFactor        = 1.01;


//setup: kører kun en gang ved progam-start
// De to tegn: { } betyder kode scope. Variabler har altid et scope de lever indenfor!
void setup() {  
  size(500, 500);
}

//draw: kører default 30  gange per sekund
void draw() {                         
  //float ballwalk =  sin(ballX*0.5)*10;  //svingning på +10 til -10 pixels 
  float ballwalk =  sin(ballX*0.5)*10;
  ballX         =  ballX  +  speedX;    //flytter min bold 
  ballY         =  ballY  +  speedY;
  ballSize      =  (ballSize*zoomFactor); //gør mit bold størrere
  eyeSize       =  (eyeSize*zoomFactor);
  eyeRightRelativeX *=zoomFactor;
  eyeRightRelativeY *=zoomFactor;
  eyeLeftRelativeX  *=zoomFactor;
  eyeLeftRelativeY  *=zoomFactor;
  
 // fik den til og bounce
  ballX += speedX;
  if (ballX > width || ballX < 0) {
    speedX *= -1;
  }
  
   ballY += speedY;
  if (ballY > width || ballY < 0) {
    speedY *= -1;
  }
  
  clear();
  // sat ballwalk ind på y pladsen.
  ellipse(ballX, ballY + ballwalk, ballSize, ballSize);
  ellipse(eyeLeftRelativeX + ballX, eyeLeftRelativeY + ballY + ballwalk, eyeSize,eyeSize);
  ellipse(eyeRightRelativeX + ballX, eyeRightRelativeY + ballY + ballwalk, eyeSize,eyeSize);
  
  if (ballX > width || ballX < 0);
}
