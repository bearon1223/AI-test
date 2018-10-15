class entity {
  float x, y, fx, fy;
  entity(){
    x = random(0, 800);
    y = random(0, 800);
    
    fx = random(0, 800);
    fy = random(0, 800);
    x = 100;
    y = 500;
    fx = 130;
    fy = 130;
  }
  
  void ai(){
    if(fy <= y + 1 && y != fy){
      y--;
    } 
    
    if(fy >= y - 1 && y != fy){
      y++;
    } 
    
    if(fx <= x + 1 && y != fx){
      x--;
    } 
    
    if(fx >= x - 1 && y != fx){
      x++;
    } 
  }
  
  void render(){
    fill(0);
    text(x, 10, 10);
    text(y, 10, 20);
    fill(100, 150, 255);
    rect(x, y, 25, 25);
  }
  
  void food(){
    fill(0);
    text(fx, 10, 40);
    text(fy, 10, 50);
    fill(100, 255, 100);
    rect(fx, fy, 25, 25);
  }
}
