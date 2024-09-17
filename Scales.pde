public void setup() {
  size(800, 800);
}
  float redChange = 3;
  float greenChange = 19;
  float blueChange = 24;
  float scale1 = 0;
  float scale2 = 0;
  float yRows = 800;
  float red = 243;
  float green = 178;
  float blue = 189;
  boolean colorDown = false;
  float xValue = 0;
  float yValue = 0;
public void draw() {
  background(192);
  System.out.print(redChange + "   ");
  System.out.print(greenChange + "    ");
  System.out.println(blueChange);

  for (int i = 0; i < 25; i ++){
    for(yRows = 800; yRows >= 0; yRows-=40){
      for (scale1 = 1; scale1 <= 20; scale1++){
        fill((red+scale1*redChange/20),(green+scale1*greenChange/20),(blue-scale1*blueChange/20));
        xValue = 40 * scale1 - 20;
        yValue = yRows;
        scale(xValue,yValue);
      }
      scale1 = 1;
      for (scale2 = 1; scale2 <= 21; scale2++){
        fill(red+scale2*redChange/20,green+scale2*greenChange/20,blue-scale2*blueChange/20);
        xValue = 40 * scale2 - 40;
        yValue = yRows-20;
        scale(xValue,yValue);
      }
      scale2 = 1;
    if(redChange < 80 && colorDown == false){
      redChange = redChange + 0.01;
      greenChange = greenChange + 0.01;
      blueChange = blueChange + 0.01;
    }else{
      colorDown =true;
    } 
      if(redChange > -50 && colorDown == true){
        redChange = redChange - 0.01;
        greenChange = greenChange - 0.01;
        blueChange = blueChange - 0.01;
      } else {
        colorDown = false;
      }
    }
  }
}

void scale(float x, float y) {
  beginShape();
  curveVertex(x,y-40);
  curveVertex(x,y-20);
  curveVertex(x-10,y-10);
  curveVertex(x-20,y);
  curveVertex(x-10,y+20);
  curveVertex(x,y+30);
  curveVertex(x,y+30);
  endShape();
  beginShape();
  curveVertex(x,y-20);
  curveVertex(x,y-20);
  curveVertex(x+10,y-10);
  curveVertex(x+20,y);
  curveVertex(x+10,y+20);
  curveVertex(x,y+30);
  curveVertex(x,y+30);
  endShape();
}

