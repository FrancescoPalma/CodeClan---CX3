class ScoreTest {

  public static void main(String[] args) {
    int[] myScores = {1,2,3};
    Score score = new Score(myScores);
    int maxScore = score.findMaxScore();
    System.out.println(maxScore);
  }

}