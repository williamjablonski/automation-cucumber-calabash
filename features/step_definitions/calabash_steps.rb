require 'calabash-android/calabash_steps'

Given(/^I am on home page$/) do
  @current_page = page(HomePage).await(timeout: 5)
end

Given(/^I put the values of primeiro lado as (\d+), segundo lado as (\d+) and terceiro lado as (\d+)$/) do |lado_1, lado_2, lado_3|
  @current_page.setTriangleSide(lado_1, lado_2, lado_3)
end

Given(/^I click at button Calcular$/) do
  @current_page.clickCalculate
end

Then(/^the type of triangule showed is "([^"]*)"$/) do |mensagem|
  @current_page.assertMessage(mensagem)
end