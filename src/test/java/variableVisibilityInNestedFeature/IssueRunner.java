package variableVisibilityInNestedFeature;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class IssueRunner {
    @Test
    public void runTest(){
        Results results = Runner.path("classpath:variableVisibilityInNestedFeature/scenario-outlines.feature")
                .parallel(1);

        assertEquals(results.getErrorMessages(), 0, results.getFailCount());
    }
}