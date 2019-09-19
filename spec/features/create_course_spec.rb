# spec/features/create_city_spec.rb
 
require 'rails_helper'
 
RSpec.describe 'Creating a Course', type: :feature do
  scenario 'valid inputs' do
    visit new_course_path
    fill_in 'Name', with: 'Rspec'
    click_on 'Create Course'
    visit courses_path
    expect(page).to have_content('Rspec')
  end

  scenario 'invalid inputs' do
    visit new_course_path
    fill_in 'Name', with: ''
    click_on 'Create Course'
    expect(page).to have_content("Name can't be blank")
  end
end
