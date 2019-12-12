Invader invader = new Invader(width/2, 700);
ArrayList<Invader> invaders = new ArrayList<Invader>();

void setup() {
 size(600, 600); 

 noStroke();
}

void draw() {
  background(255);
  invader.display();
  invader.move();
  
  if (frameCount%60 == 0 ){
  invaders.add(new Invader(random(0,width), random (0,height)));
  invader.display();
  }

  
}
