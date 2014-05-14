class Interface {
  int xL1, yL1, xL2, yL2, xR1, yR1, xR2, yR2;
  
  Interface(int xL1Temp, int yL1Temp, int xL2Temp, int yL2Temp, int xR1Temp, int yR1Temp, 
      int xR2Temp, int yR2Temp) {
     xL1 = xL1Temp;
     yL1 = yL1Temp;
     xL2 = xL2Temp;
     yL2 = yL2Temp;
     xR1 = xR1Temp;
     yR1 = yR1Temp;
     xR2 = xR2Temp;
     yR2 = yR2Temp;
   
      }
      
      
      void draw_Interface() {
      pushMatrix();
      translate(-50, -50, 300);
      noFill();
      strokeWeight(5);
      rect(xL1, yL1, xL2-xL1, yL2-yL1);
      rect(xR1, yR1, xR2-xR1, yR2-yR1);
      popMatrix();}
      
}


