package co.com.bancolombia.certificacion.manualtest.runners.consulta.detalle;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/consulta/detalle/trn0349_consulta_detalle_credito_hipotecario.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)

public class Trn0349ConsultaDetalleCreditoHipotecarioRunner {
}
