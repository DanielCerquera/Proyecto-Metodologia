package co.com.bancolombia.certificacion.manualtest.runners.Nequi.Recargar_Celular_Nequi;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/Nequi/Recargar_Celular_Nequi/Recargar_Celular.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)

public class Recargar_Celular {
}
