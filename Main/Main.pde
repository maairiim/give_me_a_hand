PShape square;  // The PShape object
int xLeft =300;
int yLeft =300;
int zLeft =0;
PFont xLeftFont,yLeftFont; 
boolean locked = false;
color buttoncolor, highlight;
color currentColor;
RectButton rect1, rect2;

void setup() {
  size(600, 600, P2D);
  // Creating the PShape as a square. The
  // numeric arguments are similar to rect().
  xLeftFont = createFont("Arial",16,true); 
  yLeftFont = createFont("Arial",16,true); 
  
  color baseColor = color(102);
  currentColor = baseColor;
  // Define and create rectangle button
  buttoncolor = color(102);
  highlight = color(51); 
  rect1 = new RectButton(0, 100, 100, buttoncolor, highlight);
 
  
}

void draw() {
  background(400);
  textFont(xLeftFont,16);
  text("X Left: "+xLeft,300,100);
  textFont(xLeftFont,16);
  text("y Left: "+yLeft,300,120);  
  ellipse(xLeft, yLeft, 10, 10);
  update(xLeft, yLeft);
  rect1.display();
  
}

void update(int x, int y) {  
  if(rect1.over(x,y)) {
    currentColor = rect1.basecolor;
    text("rect1 is over", 0,0,0);
     println("rect1 is over");
  }
  
}


void keyPressed() {
  
  switch(key)
  {
    case 113:
      xLeft= xLeft + 10;
      break;
      
    case 119:
      xLeft = xLeft - 10;
      break;
      
      case 97:
      yLeft = yLeft + 10;
      break;
      
    case 115:
      yLeft = yLeft-10;
      break;
    
  }
}




