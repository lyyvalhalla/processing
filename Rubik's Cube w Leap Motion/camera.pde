float a =PI;
void cameraView() {
  noStroke();
  camera();
  lights();
  float camDist = 600;
  float camAngle = radians(a*0.1);
  
  pushMatrix();
  if ( key == 'v')  {
       camera(-400, camDist*cos(camAngle), camDist*sin(camAngle), 0, 0, 0, 0, 1, 0);
    }
    else {
      camera(camDist*sin(camAngle), -300, camDist*cos(camAngle), 0, 0, 0, 0, 1, 0); 
  }

//  translate(width/2, height/2);
  rotateX(-0.1);
//  rotateY(-1);
  rotateY(-0.8);
      
  theCube.display();
  popMatrix();
}
