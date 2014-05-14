class Cube{
  PVector[][][] squareMatrix;
  int[][] colorTable = {{255, 0, 0}, {255, 100, 0}, {0, 0, 255}, {0, 255, 0}, {255, 255, 0}, {255, 255, 255}};
 
     
  Cube(){
    
   squareMatrix = new PVector[6][9][4];
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[0][i*3+j][0] = new PVector((i-1.5)*LENGTH, (j-1.5)*LENGTH, 1.5*LENGTH);
           squareMatrix[0][i*3+j][1] = new PVector((i-1.5)*LENGTH, (j-1.5+1)*LENGTH, 1.5*LENGTH);
           squareMatrix[0][i*3+j][2] = new PVector((i-1.5+1)*LENGTH, (j-1.5+1)*LENGTH, 1.5*LENGTH);
           squareMatrix[0][i*3+j][3] = new PVector((i-1.5+1)*LENGTH, (j-1.5)*LENGTH, 1.5*LENGTH);
         }
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[1][i*3+j][0] = new PVector((i-1.5)*LENGTH, (j-1.5)*LENGTH, -1.5*LENGTH);
           squareMatrix[1][i*3+j][1] = new PVector((i-1.5)*LENGTH, (j-1.5+1)*LENGTH, -1.5*LENGTH);
           squareMatrix[1][i*3+j][2] = new PVector((i-1.5+1)*LENGTH, (j-1.5+1)*LENGTH, -1.5*LENGTH);
           squareMatrix[1][i*3+j][3] = new PVector((i-1.5+1)*LENGTH, (j-1.5)*LENGTH, -1.5*LENGTH);
         }
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[2][i*3+j][0] = new PVector((i-1.5)*LENGTH, 1.5*LENGTH, (j-1.5)*LENGTH);
           squareMatrix[2][i*3+j][1] = new PVector((i-1.5)*LENGTH, 1.5*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[2][i*3+j][2] = new PVector((i-1.5+1)*LENGTH, 1.5*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[2][i*3+j][3] = new PVector((i-1.5+1)*LENGTH, 1.5*LENGTH, (j-1.5)*LENGTH);
         }
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[3][i*3+j][0] = new PVector((i-1.5)*LENGTH, -1.5*LENGTH, (j-1.5)*LENGTH);
           squareMatrix[3][i*3+j][1] = new PVector((i-1.5)*LENGTH, -1.5*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[3][i*3+j][2] = new PVector((i-1.5+1)*LENGTH, -1.5*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[3][i*3+j][3] = new PVector((i-1.5+1)*LENGTH, -1.5*LENGTH, (j-1.5)*LENGTH);
         }
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[4][i*3+j][0] = new PVector(1.5*LENGTH, (i-1.5)*LENGTH, (j-1.5)*LENGTH);
           squareMatrix[4][i*3+j][1] = new PVector(1.5*LENGTH, (i-1.5)*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[4][i*3+j][2] = new PVector(1.5*LENGTH, (i-1.5+1)*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[4][i*3+j][3] = new PVector(1.5*LENGTH, (i-1.5+1)*LENGTH, (j-1.5)*LENGTH);
         }
       for(int i = 0; i<3; i++)
         for(int j = 0; j<3; j++){
           squareMatrix[5][i*3+j][0] = new PVector(-1.5*LENGTH, (i-1.5)*LENGTH, (j-1.5)*LENGTH);
           squareMatrix[5][i*3+j][1] = new PVector(-1.5*LENGTH, (i-1.5)*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[5][i*3+j][2] = new PVector(-1.5*LENGTH, (i-1.5+1)*LENGTH, (j-1.5+1)*LENGTH);
           squareMatrix[5][i*3+j][3] = new PVector(-1.5*LENGTH, (i-1.5+1)*LENGTH, (j-1.5)*LENGTH);
         }
  }
   
  void display(){
    for(int i = 0; i<6; i++){
      
      fill(colorTable[i][0],colorTable[i][1],colorTable[i][2],199);
      stroke(255, 49);
      strokeWeight(20);
      for(int j = 0; j<9; j++){
          beginShape(QUAD);
            vertex(squareMatrix[i][j][0].x,squareMatrix[i][j][0].y,squareMatrix[i][j][0].z);
            vertex(squareMatrix[i][j][1].x,squareMatrix[i][j][1].y,squareMatrix[i][j][1].z);
            vertex(squareMatrix[i][j][2].x,squareMatrix[i][j][2].y,squareMatrix[i][j][2].z);
            vertex(squareMatrix[i][j][3].x,squareMatrix[i][j][3].y,squareMatrix[i][j][3].z);
          endShape();
        }
    }
  }
 
  void rTransform(PVector p, int axis, int dir){//Simple rotation transform
    float temp;
    if(axis == 1){
      temp = p.y;
      p.y = p.y * cos(radians(dir * DEG))- p.z * sin(radians(dir * DEG));
      p.z = temp *sin(radians(dir * DEG))+ p.z * cos(radians(dir * DEG));
    }else if(axis == 2){
      temp = p.x;
      p.x = p.x * cos(radians(dir * DEG))- p.z * sin(radians(dir * DEG));
      p.z = temp *sin(radians(dir * DEG))+ p.z * cos(radians(dir * DEG));
    }else{
      temp = p.x;
      p.x = p.x * cos(radians(dir * DEG))- p.y * sin(radians(dir * DEG));
      p.y = temp *sin(radians(dir * DEG))+ p.y * cos(radians(dir * DEG));
    }
  }
 
 
 
// // // // // // // // // // // // // // // // // 


// ======================================6: Right_UP ======================================
  void rightTwist() {
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].x>=1.5*LENGTH-1)||(squareMatrix[i][j][1].x>=1.5*LENGTH-1)||(squareMatrix[i][j][2].x>=1.5*LENGTH-1)||(squareMatrix[i][j][3].x>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],1,1);
            rTransform(squareMatrix[i][j][1],1,1);
            rTransform(squareMatrix[i][j][2],1,1);
            rTransform(squareMatrix[i][j][3],1,1);
          }
        if(trackingTest) {
          println("tracking 6");
        right_Up();
      }
   }

// ======================================9: Right_Down// key = y ======================================
  void rightTwist_() {
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].x>=1.5*LENGTH-1)||(squareMatrix[i][j][1].x>=1.5*LENGTH-1)||(squareMatrix[i][j][2].x>=1.5*LENGTH-1)||(squareMatrix[i][j][3].x>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],1,-1);
            rTransform(squareMatrix[i][j][1],1,-1);
            rTransform(squareMatrix[i][j][2],1,-1);
            rTransform(squareMatrix[i][j][3],1,-1);
          }
        if(trackingTest) {
          println("tracking 9");
        right_Down();
      }
   }



// ======================================5: Left_Down ====================================== 
  void leftTwist(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].x<=-(1.5*LENGTH-1))){
            rTransform(squareMatrix[i][j][0],1,-1);
            rTransform(squareMatrix[i][j][1],1,-1);
            rTransform(squareMatrix[i][j][2],1,-1);
            rTransform(squareMatrix[i][j][3],1,-1);
          }
          if(trackingTest){
            println("tracking 5");
            left_Down();
          }
  }
 
// ======================================8: left_Up//key = t ======================================
  void leftTwist_() {
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].x<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].x<=-(1.5*LENGTH-1))){
            rTransform(squareMatrix[i][j][0],1,1);
            rTransform(squareMatrix[i][j][1],1,1);
            rTransform(squareMatrix[i][j][2],1,1);
            rTransform(squareMatrix[i][j][3],1,1);
          }
        if(trackingTest) {
          println("tracking 8");
        left_Up();
      }
   }
 
// ======================================2: Bot_Right ====================================== 
  void bottomTwist(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].y>=1.5*LENGTH-1)||(squareMatrix[i][j][1].y>=1.5*LENGTH-1)||(squareMatrix[i][j][2].y>=1.5*LENGTH-1)||(squareMatrix[i][j][3].y>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],2,-1);
            rTransform(squareMatrix[i][j][1],2,-1);
            rTransform(squareMatrix[i][j][2],2,-1);
            rTransform(squareMatrix[i][j][3],2,-1);
          }
          if(trackingTest){
            println("tracking 2");
            bot_Right();
          }
  }
  
// ======================================10: Bot_Left // key = w ====================================== 
  void bottomTwist_(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].y>=1.5*LENGTH-1)||(squareMatrix[i][j][1].y>=1.5*LENGTH-1)||(squareMatrix[i][j][2].y>=1.5*LENGTH-1)||(squareMatrix[i][j][3].y>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],2,1);
            rTransform(squareMatrix[i][j][1],2,1);
            rTransform(squareMatrix[i][j][2],2,1);
            rTransform(squareMatrix[i][j][3],2,1);
          }
          if(trackingTest){
            println("tracking 10");
            bot_Left();
          }
  }
// ======================================1: Top_Left ======================================   
  void upTwist(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].y<=-(1.5*LENGTH))){
            rTransform(squareMatrix[i][j][0],2,1);
            rTransform(squareMatrix[i][j][1],2,1);
            rTransform(squareMatrix[i][j][2],2,1);
            rTransform(squareMatrix[i][j][3],2,1);
          }
          if(trackingTest){
            println("tracking 1");
            top_Left();
          }
  }
  
// ======================================11: Top_Right // key = q ======================================   
  void upTwist_(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].y<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].y<=-(1.5*LENGTH))){
            rTransform(squareMatrix[i][j][0],2,-1);
            rTransform(squareMatrix[i][j][1],2,-1);
            rTransform(squareMatrix[i][j][2],2,-1);
            rTransform(squareMatrix[i][j][3],2,-1);
          }
          if(trackingTest){
            println("tracking 11");
            top_Right();
          }
  }
// ======================================3: Face_Right ======================================
  void frontTwist(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].z>=1.5*LENGTH-1)||(squareMatrix[i][j][1].z>=1.5*LENGTH-1)||(squareMatrix[i][j][2].z>=1.5*LENGTH-1)||(squareMatrix[i][j][3].z>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],3,1);
            rTransform(squareMatrix[i][j][1],3,1);
            rTransform(squareMatrix[i][j][2],3,1);
            rTransform(squareMatrix[i][j][3],3,1);
          }
          if(trackingTest){
            println("tracking 3");
            face_Forward();
          }
  }
  
// ======================================12: Face_Left // key = e ======================================
  void frontTwist_(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].z>=1.5*LENGTH-1)||(squareMatrix[i][j][1].z>=1.5*LENGTH-1)||(squareMatrix[i][j][2].z>=1.5*LENGTH-1)||(squareMatrix[i][j][3].z>=1.5*LENGTH-1)){
            rTransform(squareMatrix[i][j][0],3,-1);
            rTransform(squareMatrix[i][j][1],3,-1);
            rTransform(squareMatrix[i][j][2],3,-1);
            rTransform(squareMatrix[i][j][3],3,-1);
          }
          if(trackingTest){
            println("tracking 12");
            face_Backward();
          }
  }
  
// ======================================4: Back_Left ======================================
  void backTwist(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].z<=-(1.5*LENGTH-1))){
            rTransform(squareMatrix[i][j][0],3,-1);
            rTransform(squareMatrix[i][j][1],3,-1);
            rTransform(squareMatrix[i][j][2],3,-1);
            rTransform(squareMatrix[i][j][3],3,-1);
          }
          if(trackingTest){
            println("tracking 4");
            back_Backward() ;
          }
  }
 
 // ======================================13: Back_Rright ======================================
  void backTwist_(){
      for(int i=0; i<6; i++)
        for(int j=0; j<9; j++)
          if((squareMatrix[i][j][0].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][1].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][2].z<=-(1.5*LENGTH-1))||(squareMatrix[i][j][3].z<=-(1.5*LENGTH-1))){
            rTransform(squareMatrix[i][j][0],3,1);
            rTransform(squareMatrix[i][j][1],3,1);
            rTransform(squareMatrix[i][j][2],3,1);
            rTransform(squareMatrix[i][j][3],3,1);
          }
          if(trackingTest){
            println("tracking 13");
            back_Forward() ;
          }
  }
   
  void singleTwist(){
      if(clock<45){
        switch(faceTurn){
          case 1:upTwist();clock++;break;
          case 2:bottomTwist();clock++;break;
          case 3:frontTwist();clock++;break;
          case 4:backTwist();clock++;break;
          case 5:leftTwist();clock++;break;
          case 6:rightTwist();clock++;break;
          
          case 8:leftTwist_();clock++;break;
          case 9:rightTwist_();clock++;break;
          case 10:bottomTwist_();clock++;break;
          case 11:upTwist_();clock++;break;
          case 12:frontTwist_();clock++;break;
          case 13:backTwist_();clock++;break;
        }
        if(clock==1) trackingTest=false;
      }else{
        clock=0;
        print("~~~~~~~~~~~~~~~~~~~~~~~~~");
        trackingTest=true;
        faceTurn=0;
      }
  }
    
}  
