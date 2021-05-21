package foo;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class FeatureRunner {
    @Test
    public void runTest(){
        String[] paths = {
                "classpath:foo/scenarios1.feature",
                "classpath:foo/scenarios2.feature",
                "classpath:foo/scenarios3.feature",
                "classpath:foo/scenarios4.feature"
        };

        Results results = Runner.path(paths)
                .parallel(3);

        assertEquals(results.getErrorMessages(), 0, results.getFailCount());
    }
}