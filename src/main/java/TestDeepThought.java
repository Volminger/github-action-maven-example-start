import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;

public class TestDeepThought {
    public TestDeepThought() {

    }
        @Test
        @DisplayName("Test the answer to everything")
        void testAnswerToAll(){
            DeepThought superComputer = new DeepThought();
            assertEquals( 42 , superComputer.answer_to_the_ultimate_question_of_life_the_universe_and_everything());
        }

}
