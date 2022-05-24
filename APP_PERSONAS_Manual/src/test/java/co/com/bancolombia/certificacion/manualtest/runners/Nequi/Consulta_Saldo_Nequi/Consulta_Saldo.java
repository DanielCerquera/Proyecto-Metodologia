package co.com.bancolombia.certificacion.manualtest.runners.Nequi.Consulta_Saldo_Nequi;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/Nequi/Consulta_Saldo_Nequi/Consulta_Saldo.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)

public class Consulta_Saldo {
}
