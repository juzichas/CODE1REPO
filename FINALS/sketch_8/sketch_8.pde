int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
  {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
};
int rows = 8, cols = 11; 
int size; 
int xPos, yPos; 

void setup() {
  size(600, 600); 
  background(255); 
  noStroke(); 


  xPos = 10; 
  yPos = 10;
  size = 10;
}

void draw() {

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (grid [i][j] == 1) {
        fill(0);
      } else {
        fill(255);
        
      }  
     rect(xPos*j, yPos*i, size, size);
    }
  }
}
