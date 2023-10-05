package aula_inatel.trabalho2;

import com.intuit.karate.junit5.Karate;

class trabalhoRunner {
    
    @Karate.Test
    Karate testGoRest() {
        return Karate.run("trabalhoDevOps").relativeTo(getClass());
    }    

}