package uk.gov.hmcts.reform.hmc.jp.functional.stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class StepDefinitions {
    @Given("repo is created")
    public void repo_is_created() {
    }
    @When("framework is implemented")
    public void framework_is_implemented() {
    }
    @Then("{string} is printed")
    public void is_printed(String string) {
        System.out.println(string);
    }
}
