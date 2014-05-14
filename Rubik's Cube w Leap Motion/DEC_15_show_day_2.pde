// 2. music notes
// 3. set new interface threshold




import com.onformative.leap.LeapMotionP5;
import com.leapmotion.leap.Finger;
import com.leapmotion.leap.Gesture.State;
import com.leapmotion.leap.Gesture.Type;
import com.leapmotion.leap.Hand;

import ddf.minim.*;
import ddf.minim.ugens.*;

LeapMotionP5 leap;
Minim minim;
AudioOutput out;
String result;
String topright, topleft;
String botright, botleft;
String leftup, leftdown;
String rightup, rightdown;
String faceleft, faceright;
String backleft, backright;
String play, shuffle;


//tracking arrays

int [][] top;
int [][] bot;
int [][] face;
int [][] back;
int [][] left;
int [][] right;

int [][] ttop;
int [][] tbot;
int [][] tface;
int [][] tback;
int [][] tleft;
int [][] tright;




// draw cube
int LENGTH = 111;
int DEG = 2;
int clock = 0;
int faceTurn = 0;
boolean switch1 = false;
String operation = new String();
String solution = new String();


 
Cube theCube;
Interface drawTop;
Interface drawBot;
Interface drawRight;
Interface drawLeft;
Interface drawFront;
Interface drawBack;


boolean game = false;
int doShufl=9;
float fingerlength;
PImage img;

void setup(){
  smooth();
  size(1200, 800, P3D);
  leap = new LeapMotionP5(this);
  minim = new Minim(this);
  out = minim.getLineOut();
  
//  stroke(0);
//  line(0, 0, 0, 300, 0, 0);
//  line(0, 0, 0, 0, 300, 0);
//  line(0, 0, 0, 0, 0, 300);
  
  
  
  lights();

  theCube = new Cube();
  
  
// initialize interface
  drawTop = new Interface(60+150, 300, 230+150, 450, 230+150, 300, 470+150, 450);
  drawBot = new Interface(60+150, 460, 230+150, 610, 230+150, 460, 470+150, 610);
  drawRight = new Interface(610+200, 430, 760+200, 650, 610+200, 650, 760+200, 800);
  drawLeft = new Interface(450+200, 430, 600+200, 650, 450+200, 650, 600+200, 800);
  drawFront = new Interface(610+200, 100, 760+200, 250, 610+200, 250, 760+200, 400);
  drawBack = new Interface(450+200, 100, 600+200, 250, 450+200, 250, 600+200, 400);
  
  
   temp = new int[3];
   top = new int[3][3];
   bot = new int[3][3];
   face = new int[3][3];
   back = new int[3][3];
   left = new int[3][3];
   right = new int[3][3];
   
   ttop = new int[3][3];
   tbot = new int[3][3];
   tface = new int[3][3];
   tback = new int[3][3];
   tleft = new int[3][3];
   tright=new int[3][3];
   
   for(int i=0;i<3;i++)
       for(int ii=0;ii<3;ii++){
               top[i][ii] = 0;
               bot[i][ii] = 1;
               face[i][ii] = 2;
               back[i][ii] = 3;
               left[i][ii] = 4;
               right[i][ii] = 5;
       }   
       
// ------- stt  
//  stt = new STT(this);
//  stt.enableDebug();
//  stt.setLanguage("en"); 
//  stt.enableAutoRecord();
//  result = "Say something!";
//  topright = "top right";
//  topleft = "top left";
//  botright = "bottom right";
//  botleft = "bottom left";
//  leftup = "left up";
//  leftdown = "left down";
//  rightup = "right side up";
//  rightdown = "right down";
//  faceleft = "face left";
//  faceright = "face right";
//  backleft = "back left";
//  backright = "back right";
//  play = "play";
//  shuffle = "shuffle";
}
 
 
 
 
 
 
void draw(){
  background(0);
  
  pushMatrix();
  translate(width/2, height/2);
  rotateX(-0.45);
  rotateY(-0.6);
  theCube.singleTwist();  
  popMatrix();
  
  strokeWeight(5);
  stroke(255, 20);
  line(100, 650, -200, 1000, 650, -200);
  line(100, 650, -200, 100, -100, -200);
  line(1000, 650, -200, 1000, -100, -200);
  stroke(0, 40);
  line(100, 650, -200, 100, 650, 200);
  line(1000, 650, -200, 1000, 650, 200);
////
  stroke(255, 20);
  //fill lines
  line(100, 500, -200, 1000, 500, -200);
  line(100, 350, -200, 1000, 350, -200);
  line(100, 200, -200, 1000, 200, -200);
  line(100, 50, -200, 1000, 50, -200);
  
  line(400, 650, -200, 400, -100, -200);
  line(700, 650, -200, 700, -100, -200);
  
  stroke(255, 30);
  line(100, 650, 50, 1000, 650, 50);
  stroke(255, 50);
  line(100, 650, 200, 1000, 650, 200);
  stroke(255, 60);
  line(100, 650, 300, 1000, 650, 300);
  
  stroke(255, 40);
  line(400, 650, -200, 400, 650, 300);
  line(700, 650, -200, 700, 650, 300);
  



  //------------- LEAP detect hand  -----------------------------  



for (Hand hand : leap.getHandList()) {
    PVector handPos = leap.getPosition(hand);
    handX = handPos.x;
    handY = handPos.y;
    handZ = handPos.z;
    fill(255);
   if( -300 < handPos.z && handPos.z < 300) {
    rect(handPos.x, handPos.y, 50, 50);    
//    img(handPos.x, handPos.y);
    }
  }
  
  
  
//------------------------- draw interfaces  -------------------------
    stroke(255, 0, 0, 66);
    drawTop.draw_Interface();
    drawBot.draw_Interface();
    stroke(0, 255, 0, 66);
    drawRight.draw_Interface();
    drawLeft.draw_Interface();
    stroke(0, 0, 255, 66);
    drawFront.draw_Interface();
    drawBack.draw_Interface();


//  fill(255);
//  textSize(17);
//
//  text("finger left/right ⇄", 50, 530);
//  text("finger up/down ⇅", 520, 740);
//  text("finger up/down ⇅", 520, 90);


//-------------------------check if hand inside interfaces  -------------------------
    is_Inside_Top(60+150, 300, 230+150, 450, 230+150, 300, 470+150, 450);
//    println("isInsideTop " + isInsideTop);
    is_Inside_Bot(60+150, 460, 230+150, 610, 230+150, 460, 470+150, 610);
    is_Inside_Right(610+200, 430, 760+200, 650, 610+200, 650, 760+200, 800);
    is_Inside_Left(450+200, 430, 600+200, 650, 450+200, 650, 600+200, 800);
    is_Inside_Face(610+200, 100, 760+200, 250, 610+200, 250, 760+200, 400);
//    println("isInsideFace " + isInsideFace);
    is_Inside_Back(450+200, 100, 600+200, 250, 450+200, 250, 600+200, 400);
   

//------------------------- hand movements trigger  -------------------------   
 if(clock==0){
    if( -300 < handZ && handZ < 300) {
    if(isInsideTop == true) {faceTurn=1;}
    if(isInsideBot == true) {faceTurn=2; }
    if(isInsideFace == true) {faceTurn=3; }
    if(isInsideBack == true) {faceTurn=4; }
    if(isInsideLeft == true) {faceTurn=5; }
    if(isInsideRight == true) {faceTurn=6; }
    }
    
  }
//if(clock==0){
// 
////  String topright = "top right";
//if(result.equals(topright) == true) {faceTurn=11; }
//if(result.equals(topleft) == true) {faceTurn=1; }
//if(result.equals(botright) == true) {faceTurn=2; }
//if(result.equals(botleft) == true) {faceTurn = 10;}
//if(result.equals(botright) == true) {faceTurn = 2;}
//if(result.equals(leftup) == true) {faceTurn = 8;}
//if(result.equals(leftdown) == true) {faceTurn = 5;}
//if(result.equals(rightup) == true) {faceTurn = 6;}
//if(result.equals(rightdown) == true) {faceTurn = 9;}
//if(result.equals(faceright) == true) {faceTurn = 3;}
//if(result.equals(faceleft) == true) {faceTurn = 12;}
//if(result.equals(backright) == true) {faceTurn = 13;}
//if(result.equals(backleft) == true) {faceTurn = 4; }
//if(result.equals(play) == true) {doTrackBack=true; }
//if(result.equals(shuffle) == true) {doShufl=0; }}




//println(result+ " " +faceTurn);}

    

//-------------------------update finger location each draw -----------  
  phandX = handX;
  phandY = handY; 




 if(win()&&game){
      game=false;
      println("CONG!!!!!!!!!!!!!!!!!!!!!***************~~~~~~~~~~~~~~~$$$$$$$$$$$$$$");
      text("you win", 32, 20);
    }
    if(doShufl<6){
      shufl();
      if(clock==0)
        doShufl++;
    }
   //track back
//  if(doTrackBack){
//    if(clock==0)
//      trackBack();
//  } 
    
//    result = "Say something!";
    
    
//===========================Leap: finger rotating =============================     
    PVector fingerpos1 = leap.getTip(leap.getFinger(0));
    PVector fingerpos2 = leap.getTip(leap.getFinger(1));
    float finger1x = fingerpos1.x;
    float finger1y = fingerpos1.y;
    float finger2x = fingerpos2.x;
    float finger2y = fingerpos2.y;
  
   if(dist(fingerpos1.x, fingerpos1.y, fingerpos2.x, fingerpos2.y)>300.) {
     if(-300 < handZ && handZ < 300) {
    a+=5 ;}
   }
//   else {
//     a = a ; 
//     
//     
//   }

  
//  a+=0.9;
  
  cameraView();
  
}



void shufl(){
    key=char(int(random(6))+1+int('0'));
    if(clock==0)
//      println("shuful #"+doShufl+": "+key);
    keyPressed();
}
//TrackBack var
int [] trackB =new int[20];

int trackBcnt=0;
boolean doTrackBack=false;

void keyPressed() {
  game=true;
  if(clock==0){
    if(key=='1') {faceTurn=1;trackB[trackBcnt]=faceTurn;trackBcnt++; }
    if(key=='2') {faceTurn=2;trackB[trackBcnt]=faceTurn;trackBcnt++; }
    if(key=='3') {faceTurn=3;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='4') {faceTurn=4;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='5') {faceTurn=5;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='6') {faceTurn=6;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='7') {doShufl=0;}
    
    if(key=='t') {faceTurn=8;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='y') {faceTurn=9;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='w') {faceTurn=10;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='q') {faceTurn=11;trackB[trackBcnt]=faceTurn;trackBcnt++; }
    if(key=='e') {faceTurn=12;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='r') {faceTurn=13;trackB[trackBcnt]=faceTurn;trackBcnt++;}
    if(key=='b') {doTrackBack=true;}
  }
  
  

  if (key =='x'){
    for (int i=0; i<360; i++) {
      a+=0.1;
}}
  if (key == 'v') {
  for (int i=0; i<360; i++) {


    a+=0.1;
  }
}

}

boolean trackingTest=true;

public void stop() {
  leap.stop();
}
int tBtimes=0;
//void trackBack(){
//  faceTurn=trackB[trackBcnt];
//  tBtimes++;
//  if(tBtimes==3){
//    tBtimes=0;
//    trackBcnt--;
//  }
//  if(trackBcnt<0){
//    doTrackBack=false;
//    trackBcnt=0;
//  }  
//
//}
