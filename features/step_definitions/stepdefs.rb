# Given("today is Sunday") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When("I ask whether it's Friday yet") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then("I should be told {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end


module FridayStepHelper
  def is_it_friday(day)
    if day == 'Friday'
      'TGIF'
    else
      'Nope'
    end
  end
end

World FridayStepHelper

Given("today is Sunday") do
  @today = 'Sunday'
end

Given("today is Friday") do
  @today = 'Friday'
end

When("I ask whether it's Friday yet") do
  @actual_answer = is_it_friday(@today)
end

Then("I should be told {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end