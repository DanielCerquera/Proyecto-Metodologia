package co.com.bancolombia.certificacion.manualtest.runners.Nequi.Opcion_SacaPlata_Nequi;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/Nequi/Opcion_SacaPlata_Nequi/SacaPlata_Nequi.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)


public class SacaPlata_Nequi {
}
