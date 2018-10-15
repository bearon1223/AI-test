void setup(){
  size(800, 800);
  surface.setTitle("PathFinding Test");
};

entity entity = new entity();


void draw(){
  background(255);
  entity.food();
  entity.ai();
  entity.render();
}
