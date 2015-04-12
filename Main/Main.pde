PShape square;  // The PShape object
int xLeft =300;
int yLeft =300;
int zLeft =0;
PFont xLeftFont,yLeftFont; 
boolean locked = false;
color buttoncolor, highlight;
color currentColor;
RectButton rect1, rect2;

int varText=60;
String[] data1;
boolean textCharged1=false;
PShape divTexto;
PImage btnTexto;
PImage btnPhoto;
PImage btnMove;
boolean openWindowText = false;

void setup() {
  size(900, 600, P2D);
  // Creating the PShape as a square. The
  // numeric arguments are similar to rect().
  xLeftFont = createFont("Arial",16,true); 
  yLeftFont = createFont("Arial",16,true); 
  
  //color baseColor = color(223,213,213);
  //currentColor = baseColor;
  // Define and create rectangle button
  buttoncolor = color(102);
  highlight = color(51); 
  rect1 = new RectButton(0, 100, 100, buttoncolor, highlight);
  
  divTexto = createShape(RECT, 0, 0, 700, 450);
  divTexto.setFill(color(255, 255, 255));
  divTexto.setStroke(false);
  
  btnTexto = loadImage("C:/Users/gvaldes/Desktop/Space App Challenge/Botones/mission.png");
  btnPhoto = loadImage("C:/Users/gvaldes/Desktop/Space App Challenge/Botones/pic.png");
  btnMove = loadImage("C:/Users/gvaldes/Desktop/Space App Challenge/Botones/remote.png");
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
  
  stroke(204, 102, 0);
  image(btnTexto, 50, 510);
  image(btnMove, 200, 510);
  image(btnPhoto, 350, 510);
  stroke(0);
  
  if(openWindowText)
  {
    shape(divTexto,150,50);
    //text(println(data1),155,55); 
    //if(!textCharged1)
    //{
      fill(0,0,0);
      for (int i = 0 ; i < data1.length; i++) {
        text(data1[i],155,varText);
        varText +=15;
      }
      varText=60;
      //textCharged1=true;
    //}
  }
  
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

void mousePressed() {
  data1=loadStrings("C:/Users/gvaldes/Desktop/Space App Challenge/processing-2.2.1/textos/Texto1.txt"); 
  
  if(openWindowText)
    openWindowText=false;
  else
    openWindowText=true;
}




