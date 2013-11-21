//Created an online peg game
//On a 9x9 board, two states, X or nothing
// Instructions on how to play:
// Remove one peg by clicking the box. 
// Pegs can only be moved by hoping over a peg directly next to it.
// The goal is to have the fewest remainning pegs possible
//Additional instructions: http://www.joenord.com/puzzles/peggame/
// Jenny Wang

Cell[][] board;  
int cols = 9;  
int rows = 9;  
void setup()  {   
  size(300,300);
  smooth();
  int w = width/cols;
  int h = height/rows;
  board = new Cell[cols][rows];
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      board[x][y] = new Cell(x*w,y*h,x,y,w,h);
    }   
  }   
}   

void draw()  {   
  background(255);  
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      board[x][y].display();  
    }
  }
}   

void mousePressed()  {   
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      board[x][y].click(mouseX,mouseY);  
    }   
  }    
} 
