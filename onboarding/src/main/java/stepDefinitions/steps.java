package stepDefinitions;

import cucumber.api.java.en.*;

public class steps {
	
	@Given("^the Task UI is loading properly$")
	public void the_Task_UI_is_loading_properly() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@And("^The left panel loaded$")
	public void the_left_panel_loaded() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("^Count the <RequiredTaskTotalNumber> for Required tasks$")
	public void count_the_RequiredTaskTotalNumber_for_Required_tasks() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Given("^I want to validate progress chart while number of Required tasks completed$")
	public void i_want_to_validate_progress_chart_while_number_of_Required_tasks_completed() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("(.*) of Required task completed$")
	public void of_Required_task_completed(int RequiredTaskTotalNumber) {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("^Required task progress chart showing (\\d+)%$")
	public void required_task_progress_chart_showing(int arg1) {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("^<RequiredTaskTotalNumber> of Required task completed$")
	public void requiredtasktotalnumber_of_Required_task_completed() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("^<RequiredTaskCompletionNumber> of Required task completed$")
	public void requiredtaskcompletionnumber_of_Required_task_completed() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("^Required task progress chart showing Rounding\\(<RequiredTaskCompletionNumber>/<RequiredTaskTotalNumber>\\) \\*(\\d+)%$")
	public void required_task_progress_chart_showing_Rounding_RequiredTaskCompletionNumber_RequiredTaskTotalNumber(int arg1) {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("^Count the <OptionalTaskTotalNumber> for Optional tasks$")
	public void count_the_OptionalTaskTotalNumber_for_Optional_tasks() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Given("^I want to validate progress chart while number of Optional tasks completed$")
	public void i_want_to_validate_progress_chart_while_number_of_Optional_tasks_completed() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("^<OptionalTaskCompletionNumber> of Optional task completed$")
	public void optionaltaskcompletionnumber_of_Optional_task_completed() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@Then("^Optional task progress chart showing <OptionalTaskPercentage>$")
	public void optional_task_progress_chart_showing_OptionalTaskPercentage() {
	    // Write code here that turns the phrase above into concrete actions
	}
	
}
