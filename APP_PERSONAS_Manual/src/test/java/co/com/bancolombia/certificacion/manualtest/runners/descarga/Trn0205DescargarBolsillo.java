package co.com.bancolombia.certificacion.manualtest.runners.descarga;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features/descarga/trn0205_descargar_bolsillo.feature",
        glue = "co.com.bancolombia.certificacion.manualtest.stepdefinitions",
        snippets = SnippetType.CAMELCASE
)
public class Trn0205DescargarBolsillo {
}

