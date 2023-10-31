
Given('I navigate to the Green Kart homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
  sleep 1 # The sleeps are added to slow down the automation to show it working
end


Then('I should see the Green Kart homepage') do
  expect(page).to have_title('GreenKart - veg and fruits kart')
  expect(page).to have_css('.search')
  expect(page).to have_css('.search-button')
  expect(page).to have_css('.cart-header-navlink')
  expect(page).to have_css('.cart-header-navlink')
  expect(page).to have_css('.cart-info')
  expect(page).to have_css('.cart-icon')
end

Given('I input carrot into the search bar and clicked the search button') do
    find(:xpath, "//input[@placeholder='Search for Vegetables and Fruits']").set("Carrot")
    sleep 1
end

Then('I should see carrot in the results') do
  expect(page).to have_content("Carrot")
  sleep 6
end


Given('I input Pizza into the search bar and clicked the search button') do
  find(:xpath, "//input[@placeholder='Search for Vegetables and Fruits']").set("Pizza")
  sleep 10
end

Then('I should see no results') do
expect(page).to have_content("Sorry, no products matched your search")
sleep 
end


