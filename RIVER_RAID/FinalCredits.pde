public class FinalCredits {
  
  public ArrayList<Enemy> finalEnemies;
  
  
  FinalCredits(){
    finalEnemies = new ArrayList<Enemy>();
    
    int x = 200 + (int) random(200);
    int y = - 100;
    for (int i = 0; i< 15; i++){
      FinalEnemy finalEnemy1 = new FinalEnemy("./images/credits/enemy_" + i + ".png", x, y);
      finalEnemies.add(finalEnemy1);
      y -= 300;
      
      
    }
    
  }
  
  
  void draw(){
    
   
    for (Enemy fe : finalEnemies) {
       fe.drawIfVis(yMaster);
     }
    
  }
  
  

  
}