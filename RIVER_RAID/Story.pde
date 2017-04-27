public class Story {
  
  StoryStage storyStage; 
  
  Story() {
     storyStage = StoryStage.STORY_1; 
  }
  
  void draw() {
      textSize(h(30));
    switch(storyStage) { 
    case STORY_1:
      image(getImage("./images/story/"+storyStage+".png", w(1000), h(1000)), x(0), y(0));
      break;
    case STORY_2:
      image(getImage("./images/story/"+storyStage+".png", w(1000), h(1000)), x(0), y(0));
      fill(0, 150, 0);
      text("Local time: 00:32, border Air Force base", x(-500), y(950));
      break;
    case STORY_3:
      image(getImage("./images/story/"+storyStage+".png", w(1000), h(1000)), x(0), y(0));
      textAlign(RIGHT);
      fill(0, 150, 0);
      text("Pilot "+player.getName()+", to the general!", x(950), y(950));
      textAlign(CENTER);
      break;
    case STORY_4A:
      image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
      fill(100, 255, 100);
      text(player.getName().charAt(0) + ": Yes, general!", x(300), y(500));
      break;
    case STORY_4B:
        image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
        fill(255, 255, 255);
        text("G: HI " + player.getName() + "\n We are in emergency state, \nthe  Evil RACOBO is planning to destroy everything", x(600), y(300));
      break;
    case STORY_4C:
        image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
        fill(100, 255, 100);
        text(player.getName().charAt(0) + ": JACOBO?? The erasmus guy?!", x(300), y(400));
      break;
    case STORY_4D:
         image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
         fill(255, 255, 255);
         text("G: YES!! and for that he send all his Army \n composed by the paawola team", x(600), y(400));
      break;
    case STORY_4E:
         image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
         fill(100, 255, 100);
         text(player.getName().charAt(0) + ": Taths not poossible!! \nThey were too much ocupated doing parties and drinking beer", x(300), y(400));
      break;
    case STORY_4F:
         image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
         fill(255, 255, 255);
         text("G: YES, but he convinced them to destroy everything,\n BE CAREFOUL WITH THEM, they will shoot you beers!! \nAre you ready to defeat them?!!", x(600), y(400));
         break;
    case STORY_4G:
         image(getImage("./images/story/STORY_4.png", w(1000), h(1000)), x(0), y(0));
         fill(100, 255, 100);
         text(player.getName().charAt(0) + ": Claro que zii, go theeeereeeeeee!", x(300), y(400));
      break;
      

    }
  }
  
  void advance() {
     switch(storyStage) {
     case STORY_1:
       storyStage = StoryStage.STORY_2;
       break;
     case STORY_2:
       storyStage = StoryStage.STORY_3;
       break;
     case STORY_3:
       storyStage = StoryStage.STORY_4A;
       break;
     case STORY_4A:
       storyStage = StoryStage.STORY_4B;
       break;
     case STORY_4B:
       storyStage = StoryStage.STORY_4C;
       break;
     case STORY_4C:
       storyStage = StoryStage.STORY_4D;
       break;
     case STORY_4D:
       storyStage = StoryStage.STORY_4E;
       break;
     case STORY_4E:
       storyStage = StoryStage.STORY_4F;
       break;
     case STORY_4F:
       storyStage = StoryStage.STORY_4G;
       break;
     case STORY_4G:
       storyStage = StoryStage.END;
       break;
     }
  }
  
  boolean over() {
     return (storyStage == StoryStage.END);
  }
}