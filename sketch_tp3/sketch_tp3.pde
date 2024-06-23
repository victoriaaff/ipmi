int originalState = 0; 
void setup() {
size(800, 400); 
noLoop(); 
} 
void draw() {
background(255); 
// dibuja la imagen de referenia al costado
PImage refImage = loadImage("patron.jpeg");
image(refImage, 0, 0, 400, 400); 
drawPattern(width / 2, 0, width / 2, height); } // Funcion del patron del dibujp
void drawPattern(int x, int y, int w, int h) { for (int i = 0; i < w / 2; i += 20) { 
  stroke(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255), 150); 
   noFill();
   if (originalState == 0) {
     
   drawRect(x / 2 - w / 4 + i, y + i, w / 2 - i * 2, h - i * 2);  
 drawRect(x / 2 + w / 4 + i, y + i, w / 2 - i * 2, h - i * 2); 
 } else { 
 drawRect(x + i, y + i, w - i * 2, h - i * 2); 
   } 
  } 
 } 
 void drawRect(int x, int y, int w, int h) { rect(x, y, w, h); 
 }
  boolean isMouseInRect(int x, int y, int w, int h) { 
    return (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h); }
    void mousePressed() { if (isMouseInRect(width / 2, 0, width / 2, height)) {
      originalState = 1 - originalState;
      redraw(); 
    } 
  }
   void mouseMoved() { 
   redraw(); 
 }
 void keyPressed() { 
 if (key == 'r') {
 originalState = 0; 
 redraw();
 } 
 }
    
