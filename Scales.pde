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
public void draw() {
  background(192);
  System.out.print(redChange + "   ");
  System.out.print(greenChange + "    ");
  System.out.println(blueChange);

  for (int i = 0; i < 25; i ++){
    for(yRows = 800; yRows >= 0; yRows-=40){
      for (scale1 = 1; scale1 <= 20; scale1++){
        fill((red+scale1*redChange/20),(green+scale1*greenChange/20),(blue-scale1*blueChange/20));
        ellipse(40*scale1-20,yRows,40,40);
      }
      scale1 = 1;
      for (scale2 = 1; scale2 <= 21; scale2++){
        fill(red+scale2*redChange/20,green+scale2*greenChange/20,blue-scale2*blueChange/20);
        ellipse(40*scale2-40,yRows-20,40,40);
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



