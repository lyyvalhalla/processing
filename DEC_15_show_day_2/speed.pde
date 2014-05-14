boolean isInsideTop;
boolean isInsideBot;
boolean isInsideRight;
boolean isInsideLeft;
boolean isInsideFace;
boolean isInsideBack;
float handX, handY, handZ, phandX, phandY;
int default_speed = 20;
float distX, distY;


void is_Inside_Top(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2) {
  distX = handX - phandX; 
  distY = handY - phandY;  
    if(abs(handX-phandX)>default_speed){
          if((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2) {
             if(handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2){
                isInsideTop = true;            
          } 
          else { isInsideTop = false;
          }
        }       
      } 
    }
    
    

void is_Inside_Bot(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2) {
 
  distX = handX - phandX; 
  distY = handY - phandY;  
  if(abs(handX-phandX)>default_speed){
        if ((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2){
          if (handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2){
            isInsideBot = true;
          } else { isInsideBot = false;
          }
        }   
      }    
    }
  
   
void is_Inside_Right(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2){
  distX = handX - phandX; 
  distY = handY - phandY;
  if(abs(handY-phandY)>default_speed){
  if ((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2) {
    if(handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2) {
      isInsideRight = true;}
      else { isInsideRight = false;}
  }
}}


void is_Inside_Left(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2){
  distX = handX - phandX; 
  distY = handY - phandY;
  if(abs(handY-phandY)>default_speed){
  if ((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2) {
    if(handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2) {
      isInsideLeft = true;}
      else { isInsideLeft = false;}
  }
}}


void is_Inside_Face(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2){
  distX = handX - phandX; 
  distY = handY - phandY;
  if(abs(handY-phandY)>default_speed){
  if ((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2) {
    if(handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2) {
      isInsideFace = true;}
      else { isInsideFace = false;}
  }}
}

void is_Inside_Back(int xL1, int yL1, int xL2, int yL2, int xR1, int yR1, int xR2, int yR2){
  distX = handX - phandX; 
  distY = handY - phandY;
  if(abs(handY-phandY)>default_speed){
  if ((handX-distX)>xL1 && (handX-distX)<xL2 && (handY-distY)>yL1 && (handY-distY)<yL2) {
    if(handX>xR1 && handX<xR2 && handY>yR1 && handY<yR2) {
      isInsideBack = true;}
      else { isInsideBack = false;}
  }
}}
