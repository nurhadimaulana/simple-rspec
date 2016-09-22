require 'rails_helper'

feature 'Add new vehicle'  do
  scenario '' do
    visit vehicles_path
    click_on 'New Blog'
    fill_in 'vehicle[model]', with: 'Luxury Car'
    fill_in 'vehicle[make]', with: 'Honda Accord'
    fill_in 'vehicle[year]', with: '2016'
    fill_in 'vehicle[style]', with: 'Car'
    click_on 'Create Vehicle'
    expect(page).to have_content('Vehicle was successfully created.')
  end
end