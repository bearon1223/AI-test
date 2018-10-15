class entity {
  float x, y, fx, fy;
  entity(){
    x = floor(random(0, width));
    y = floor(random(0, height));
    
    fx = floor(random(0, width));
    fy = floor(random(0, height));
  }
  
  void ai(){
    
    color c = get(int(x + 12.5), int(y + 12.5));
    
    if(fy <= y && y != fy){
      y--;
    } 
    
    if(fy >= y && y != fy){
      y++;
    } 
    
    if(fx <= x && y != fx){
      x--;
    } 
    
    if(fx >= x && y != fx){
      x++;
    } 
    
    if(c == color(100, 255, 100)){
      fx = floor(random(0, width));
      fy = floor(random(0, height));
    }
    
  }
  
  void render(){
    fill(100, 150, 255);
    rect(x, y, 25, 25);
  }
  
  void food(){
    fill(100, 255, 100);
    rect(fx, fy, 25, 25);
  }
}
