
Player myPlayer;

PImage start;
PImage bg;
PImage instructions;
PImage win;
House myHouse;


Cactus myCactus;


int rows = 9;
int columns = 9;
int size = 77;

int state; 
Boolean startOrNot = false;

//test
int number[][] = {{1, 1, 1, 1, 1, 1, 0, 1, 0}, {0, 1, 0, 0, 1, 0, 0, 1, 0}, {0, 1, 0, 0, 1, 1, 0, 1, 0}, {0, 1, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 1, 1, 0, 0}, {1, 0, 0, 1, 0, 1, 0, 0, 0}, {3, 1, 1, 0, 0, 0, 1, 0, 1}, {0, 1, 0, 0, 1, 0, 0, 0, 1}, {0, 0, 0, 0, 0, 0, 0, 0, 1}, {0, 0, 0, 0, 0, 01, 0, 1}, {1, 0, 0, 0, 0, 1, 1, 0, 0}};

void setup() {
  size(700, 700);

  instructions = loadImage("instructions.png");
  instructions.resize(height, width);

  win = loadImage("win.png");
  instructions.resize(height, width);

  start = loadImage("startscreen.png");
  start.resize(height, width);

  bg = loadImage("bg.png");
  bg.resize(height, width);
  myPlayer=new Player();


  myCactus = new Cactus();
  myCactus.xPos = size;
  myCactus.yPos = size;


  myHouse = new House();
  myHouse.xPos = size;
  myHouse.yPos = size;


  rectMode(CENTER);
}
boolean canMove = true; 
void draw() {

  ///SCENE CHANGE




  //start screen state = 0
  if (state == 0) {
    image(start, 0, 0);
    start.resize(height, width);
    image(start, 0, 0);

    print(state);
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == SHIFT) {
          state = 1;
        }
      }
    }
  }

  if (state == 1) {
    image(instructions, 0, 0);
    instructions.resize(height, width);
    image(instructions, 0, 0);

    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == ALT) {
          println("pressed");
          state = 2;
        }
      }
    }
  }


  //game play scene 
  if (state == 2) {
    image(bg, 0, 0);
    bg.resize(height, width);
    image(bg, 0, 0);

    drawGrid();
    myPlayer.drawPlayer();
    myPlayer.move();
    myPlayer.update();
  }

if (state == 4) {

  image(win, 0, 0);
}
}



void drawGrid() {
  for (int i = 0; i< rows; i++) {
    for (int j = 0; j< columns; j++) {

      if (number[i][j] == 3) {

        myHouse.arrayI = i;
        myHouse.arrayII=j;
        myHouse.drawHouse();
      }

      if (number[i][j] == 1) {
        //draw wall 

        myCactus.arrayI = i;
        myCactus.arrayII=j;
        myCactus.drawCactus();

        //fill(0);  
        //rect(i*size, j*size, size, size);
      }

      if (number[i][j] == 0) {
        println(number[i][j]);
      }
    }
  }
}
