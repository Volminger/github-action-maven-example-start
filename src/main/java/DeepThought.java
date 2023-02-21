import java.util.concurrent.TimeUnit;

public class DeepThought {
    public DeepThought(){

    }

    public int answer_to_the_ultimate_question_of_life_the_universe_and_everything(){
        System.out.println("You have asked the answer to the Ultimate Question of Life, the Universe, and Everything");
        System.out.println("I need to think a while about that one, come back again in 7.5 million years...");
        calculate(); // for 7.5 million years....
        return give_answer();
    }

    private void calculate(){
        for(int million_years = 0; million_years < 8; million_years++){
            System.out.println(million_years + " million years have passed...");
            think(1);
        }
        System.out.println("7.5 million years have now passed and I have a answer");
    }

    private void think(int time){
        try {
            TimeUnit.SECONDS.sleep(time);
        } catch (Exception e){
            System.out.println(e);
        }
    }

    private int give_answer(){
        return 42;
    }
}
