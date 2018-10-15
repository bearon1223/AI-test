void setup(){
  size(1000, 1000);
  surface.setResizable(true);
  //fullScreen();
  surface.setTitle("PathFinding Test");
};

entity entity = new entity();


void draw(){
  background(255);
  entity.food();
  entity.ai();
  entity.render();
}
