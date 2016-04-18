public class Score {

  int[] scores;

  public Score() {
    scores = new int[3];
    scores[0] = 2;
    scores[1] = 4;
    scores[2] = 6;
  }

  public Score(int[] scores) {
    this.scores = new int[scores.length];
    for (int i = 0; i < scores.length; i++) {
      this.scores[i] = scores[i];
    }
  }

  public int findMaxScore() {
    int currentMax = scores[0];
    for(int x : scores) {
      if(x > currentMax) {
        currentMax = x;
      }
    }
    return currentMax;
  }

}