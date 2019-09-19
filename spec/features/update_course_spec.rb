# spec/features/create_city_spec.rb
 
require 'rails_helper'
 
RSpec.describe 'Creating a Course', type: :feature do
  scenario 'valid inputs' do
    course = Course.create(name:"Rails1")
    visit edit_course_path(id: course.id)
    fill_in 'Name', with: 'Rspec'
    click_on 'Update Course'
    visit courses_path
    expect(page).to have_content('Rspec')
  end

  scenario 'invalid inputs' do
    course = Course.create(name:"Rails1")
    visit edit_course_path(id: course.id)
    fill_in 'Name', with: ''
    click_on 'Update Course'
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'visit show course page' do
    course = Course.create(name:"Rails1")
    visit course_path(id: course.id)
    expect(page).to have_content("Name: Rails1")
  end

  scenario 'index show course page' do
    course = Course.create(name:"Rails1")
    visit courses_path
    expect(page).to have_content("Rails1")
    expect(page).to have_content("Show")
    expect(page).to have_content("Edit")
    expect(page).to have_content("Destroy")
  end

end
