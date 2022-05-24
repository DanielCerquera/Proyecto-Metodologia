package co.com.bancolombia.certificacion.manualtest.runners.consulta.terminosycondiciones;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/consulta/terminosycondiciones/trn4002_consulta_terminos_y_condiciones.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)

public class Trn4002ConsultaTerminosYCondiciones {
}
