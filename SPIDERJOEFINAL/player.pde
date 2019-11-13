class Player {
  // set up color in display method
  float xPos, yPos;
  float xSpeed, ySpeed; // set up the thing that controls that in the method > no control over how fast the player moves
  int size; // helps to check for collisions, so we can access size of ship 

  PImage spider;

  int newX;
  int newY;


  Player() {
    size = 77;
    xPos = size/2 +1;
    yPos = height-size/2+1;
    spider = loadImage("spiderjoe.png");
  }

  void drawPlayer() {

    image(spider, xPos, yPos, size, size);
    //ellipse(xPos, yPos, size, size);
    //fill(0);
  }

  void update() {


  



    if (keyPressed) {


      if ((number[round(newX/size)][round(newY/size)]) == 0 && key == CODED) {
        if (keyCode == UP) {
          ySpeed = -7;
          println("pressed");
        } else if (keyCode == DOWN) {
          ySpeed = 7;
        } else if (keyCode == LEFT) {
          xSpeed = -7;
        } else if (keyCode == RIGHT) {
          xSpeed = 7;
        } else if ((number[round(newX/size)][round(newY/size)]) == 3) {
      state = 4;
    }

      }
    } else {
      xSpeed = 0; 
      ySpeed = 0;
    }
  }


void move() {

  newX = int(xPos += xSpeed); 
  newY = int(yPos += ySpeed);


  ////println (round(xPos/size), round(yPos/size));
  println(number[round(newX/size)][round(newY/size)]);
}
}
