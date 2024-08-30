class GameView {
  Flashcard flashcard;
  boolean showingAnswer;
  String currentCardText;

  GameView() {
  }

  void setNumber(int number, int total) {
    this.currentCardText = number + "/" + total;
  }

  void setCard(Flashcard card) {
    this.flashcard = card;
  }

  void render() {
    background(50);

    background(100);
    //textAlign(CENTER);
    //rectMode(CENTER);
    final int textSize = 24;
    textSize(textSize); //skrifstørrelse
    textLeading(textSize*1.2); //Linjeafstand
    textAlign(LEFT);

    text(this.showingAnswer ? this.flashcard.getBack() : this.flashcard.getFront(), width/4, height/4, width/2, height/2);
    
    textAlign(CENTER);
    text(this.currentCardText, width/2, 28);
  }

  void update(double deltaTime) {
  }
}
