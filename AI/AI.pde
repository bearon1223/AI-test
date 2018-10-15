void setup(){
  size(1000, 1000);
  surface.setResizable(true);
  //fullScreen();
  surface.setTitle("PathFinding Test");
};

entity entity = new entity();
boolean pressed = false;

void draw(){
  background(255);
  entity.food();
  entity.ai();
  entity.render();
  if(keyCode == UP && keyPressed && !pressed){
    save("Screenshot"+ "_" +year() + "_" + day() + "_" + month() + "_" +  hour() + "_" + second()+".png");
    pressed = true;
  } else if(!keyPressed){
    pressed = false;
  }
}
