int [] temp;
int  tempA, tempB;
int n;
boolean run = true;
String tracking = "tracking";


// ====================================  HORIZONTAL =======================================================
// ------------------------------------  TOP turn RIGHT/LEFT ----------------------------------------------
void top_Left() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tface[i][0];
    face[i][0]=tright[2-i][0];
    right[i][0]=tback[i][0];
    back[i][0]=tleft[2-i][0];
    left[i][0]=tface[i][0];
  }
  
  tempA=top[0][2];
  tempB=top[1][2];
  top[0][2]=top[2][2];
  top[1][2]=top[2][1];
  top[2][2]=top[2][0];
  top[2][1]=top[1][0];
  top[2][0]=top[0][0];
  top[1][0]=top[0][1];
  top[0][0]=tempA;
  top[0][1]=tempB;
  top[1][1]=top[1][1];
  out.playNote("G3");
}

void top_Right () {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tface[i][0];
    face[i][0]=tleft[i][0];
    left[i][0]=tback[2-i][0];
    back[i][0]=tright[i][0];
    right[i][0]=tface[2-i][0];
  }
  
  tempA=top[0][2];
  tempB=top[1][2];
  top[0][2]=top[0][0];
  top[1][2]=top[0][1];
  top[0][0]=top[2][0];
  top[0][1]=top[1][0];
  top[2][0]=top[2][2];
  top[1][0]=top[2][1];
  top[2][2]=tempA;
  top[2][1]=tempB;
  top[1][1]=top[1][1];
  out.playNote("A3");
}

// ------------------------------------  Bottom turn RIGHT/LEFT ------------------------------------ 
void bot_Left() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tface[i][2];
    face[i][2]=tright[2-i][2];
    right[i][2]=tback[i][2];
    back[i][2]=tleft[2-i][2];
    left[i][2]=tface[i][2];
  }
  tempA=bot[0][2];
  tempB=bot[1][2];
  bot[0][2]=bot[0][0];
  bot[1][2]=bot[0][1];
  bot[0][0]=bot[2][0];
  bot[0][1]=bot[1][0];
  bot[2][0]=bot[2][2];
  bot[1][0]=bot[2][1];
  bot[2][2]=tempA;
  bot[2][1]=tempB;
  bot[1][1]=bot[1][1];
  out.playNote("D3");
}

void bot_Right() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tface[i][2];
    face[i][2]=tleft[i][2];
    left[i][2]=tback[2-i][2];
    back[i][2]=tright[i][2];
    right[i][2]=tface[2-i][2];
  }
  
  tempA=bot[0][2];
  tempB=bot[1][2];
  bot[0][2]=bot[2][2];
  bot[1][2]=bot[2][1];
  bot[2][2]=bot[2][0];
  bot[2][1]=bot[1][0];
  bot[2][0]=bot[0][0];
  bot[1][0]=bot[0][1];
  bot[0][0]=tempA;
  bot[0][1]=tempB;
  bot[1][1]=bot[1][1];
  out.playNote("G3");
}




// ====================================  VERTICAL LEFT/RIGHT SIDES=======================================================
// ------------------------------------  LEFT turn UP/DOWN  ------------------------------------------

void left_Down() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[0]=ttop[0][i];
    top[0][i]=tback[0][2-i];
    back[0][i]=tbot[0][i];
    bot[0][i]=tface[0][2-i];
    face[0][i]=ttop[0][i];
  }
  
  tempA=left[0][2];
  tempB=left[1][2];
  left[0][2]=left[2][2];
  left[1][2]=left[2][1];
  left[2][2]=left[2][0];
  left[2][1]=left[1][0];
  left[2][0]=left[0][0];
  left[1][0]=left[0][1];
  left[0][0]=tempA;
  left[0][1]=tempB;
  left[1][1]=left[1][1];
  out.playNote("C4");
}


void left_Up() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[0]=ttop[0][i];
    top[0][i]=tface[0][i];
    face[0][i]=tbot[0][2-i];
    bot[0][i]=tback[0][i];
    back[0][i]=ttop[0][2-i];
  }
  
  tempA=left[0][2];
  tempB=left[1][2];
  left[0][2]=left[0][0];
  left[1][2]=left[0][1];
  left[0][0]=left[2][0];
  left[0][1]=left[1][0];
  left[2][0]=left[2][2];
  left[1][0]=left[2][1];
  left[2][2]=tempA;
  left[2][1]=tempB;
  left[1][1]=left[1][1];
  out.playNote("E5");
}


// ------------------------------------  RIGHT turn UP/DOWN  ------------------------------------------

void right_Down() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=ttop[2][i];
    top[2][i]=tback[2][2-i];
    back[2][i]=tbot[2][i];
    bot[2][i]=tface[2][2-i];
    face[2][i]=ttop[2][i];
  }
  tempA=right[0][2];
  tempB=right[1][2];
  right[0][2]=right[0][0];
  right[1][2]=right[0][1];
  right[0][0]=right[2][0];
  right[0][1]=right[1][0];
  right[2][0]=right[2][2];
  right[1][0]=right[2][1];
  right[2][2]=tempA;
  right[2][1]=tempB;
  right[1][1]=right[1][1];
  out.playNote("A3");
}

void right_Up() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=ttop[2][i];
    top[2][i]=tface[2][i];
    face[2][i]=tbot[2][2-i];
    bot[2][i]=tback[2][i];
    back[2][i]=ttop[2][2-i];
  }
  tempA=right[0][2];
  tempB=right[1][2];

  right[0][2]=right[0][0];
  right[1][2]=right[0][1];
  right[0][0]=right[2][0];
  right[0][1]=right[1][0];
  right[2][0]=right[2][2];
  right[1][0]=right[2][1];
  right[2][2]=tempA;
  right[2][1]=tempB;
  out.playNote("B3");
}
  


// ====================================  VERTICAL FACE/BACK SIDEs=======================================================
// ------------------------------------  FACE turn Forward/Backward  ------------------------------------------
     
void face_Backward() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tleft[2][i];
    left[2][i]=ttop[2-i][2];
    top[i][2]=tright[0][i];
    right[0][i]=tbot[2-i][2];
    bot[i][2]=tleft[2][i];
  }
  
  tempA=face[0][2];
  tempB=face[1][2];
  face[0][2]=face[0][0];
  face[1][2]=face[0][1];
  face[0][0]=face[2][0];
  face[0][1]=face[1][0];
  face[2][0]=face[2][2];
  face[1][0]=face[2][1];
  face[2][2]=tempA;
  face[2][1]=tempB;
}


void face_Forward() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tleft[2][i];
    left[2][i]=tbot[i][2];
    bot[i][2]=tright[0][2-i];
    right[2][i]=ttop[i][2];
    top[i][2]=tleft[2][2-i];
  }

  
  tempA=face[0][2];
  tempB=face[1][2];
  face[0][2]=face[2][2];
  face[1][2]=face[2][1];
  face[2][2]=face[2][0];
  face[2][1]=face[1][0];
  face[2][0]=face[0][0];
  face[1][0]=face[0][1];
  face[0][0]=tempA;
  face[0][1]=tempB;
  out.playNote("A5");
}


void back_Backward() {
  getCurrent();
  for(int i=0; i<3; i++) {
    //temp[i]=tleft[0][i];
    left[0][i]=ttop[2-i][0];
    top[i][0]=tright[0][i];
    right[0][i]=tbot[2-i][0];
    bot[i][0]=tleft[0][i];
  }
  
  tempA=back[0][2];
  tempB=back[1][2];
  back[0][2]=back[0][0];
  back[1][2]=back[0][1];
  back[0][0]=back[2][0];
  back[0][1]=back[1][0];
  back[2][0]=back[2][2];
  back[1][0]=back[2][1];
  back[2][2]=tempA;
  back[2][1]=tempB;
  out.playNote("E3");
}

void back_Forward() {
  getCurrent();
  for(int i=0; i<3; i++) {
   // temp[i]=tleft[0][i];
    left[0][i]=tbot[i][0];
    bot[i][0]=tright[2][2-i];
    right[2][i]=ttop[i][0];
    top[i][0]=tleft[0][2-i];
  }
  
  tempA=back[0][2];
  tempB=back[1][2];
  back[0][2]=back[0][0];
  back[1][2]=back[0][1];
  back[0][0]=back[2][0];
  back[0][1]=back[1][0];
  back[2][0]=back[2][2];
  back[1][0]=back[2][1];
  back[2][2]=tempA;
  back[2][1]=tempB;
  out.playNote("D4");
}


void run_test(){
  println("face");
  test(face);
  println("left");
  test(left);
  println("top");
  test(top);
  println("back");
  test(back);
  println("bot");
  test(bot);
  println("right");
  test(right);
}
void test(int t[][]) {
  // axis y
  for(int i=0; i<3; i++) {
    // axis x
    for (int ii=0; ii<3; ii++) {
      print("-"+t[ii][i]+"-");      
    }
   println(" ");
  }
  println(" ");
}
void getCurrent(){
  for(int i=0;i<3;i++)
       for(int ii=0;ii<3;ii++){
               ttop[i][ii] =top[i][ii];
               tbot[i][ii] =bot[i][ii] ;
               tface[i][ii] =face[i][ii] ;
               tback[i][ii] =back[i][ii] ;
               tleft[i][ii] =left[i][ii] ;
               tright[i][ii] =right[i][ii] ;
       }
}

boolean win(){
  boolean win=true;
    for(int i=0;i<3;i++)
       for(int ii=0;ii<3;ii++){
               if(top[i][ii] ==top[0][0]&&
               bot[i][ii] ==bot[0][0]&&
               face[i][ii] ==face[0][0]&&
               back[i][ii] ==back[0][0]&&
               left[i][ii] ==left[0][0]&&
               right[i][ii] ==right[0][0]){
                 win=true;
               }else{
                 win=false;
                 break;
               }       
       }
       return win;
}
