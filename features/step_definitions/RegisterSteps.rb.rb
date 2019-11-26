# frozen_string_literal: true

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

Given(/^I navigate to Cermati register homepage$/) do
  driver.navigate.to 'https://www.cermati.com/gabung'
end

When(/^I fill using valid email$/) do
  email = driver.find_element(:xpath, '//input[@id="email"]')
  email.send_keys('hgfrans158+3@gmail.com')
end

And(/^I fill valid password$/) do
  password = driver.find_element(:xpath, '//input[@id="password"]')
  password.send_keys('password123')
end

And(/^I fill confirm passowrd$/) do
  confirmpassword = driver.find_element(:xpath, '//input[@id="confirm-password"]')
  confirmpassword.send_keys('password123')
end

And(/^I fill Nama Depan$/) do
  frontname = driver.find_element(:xpath, '//input[@id="first-name"]')
  frontname.send_keys('Emile')
end

And(/^I fill Nama Belakang$/) do
  lastname = driver.find_element(:xpath, '//input[@id="last-name"]')
  lastname.send_keys('Francois')
end

And(/^I fill Nomor Telepon$/) do
  Phone = driver.find_element(:xpath, '//input[@id="mobile-phone"]')
  Phone.send_keys('081393121320')
end

And(/^I fill Kabupaten$/) do
  city = driver.find_element(:xpath, '//input[@id="residence-city"]')
  city.send_keys('KOTA YOGYAKARTA')
  sleep(5)
  dropdown = driver.find_element(:class, 'autocomplete-list-item')
  dropdown.click
end

When(/^I click Daftar Akun button$/) do
  Register = driver.find_element(:xpath, '//button[@class="btn btn-full btn-submit btn-track"]').click
end

Then(/^The results for the search will be displayed$/) do
  sleep(5)
  if @browser.text.include?('Terima kasih telah bergabung dengan cermati.com.')
    puts "Test passed!"
  else
    puts "Test Failed! text is not present on the page!"
  end
end