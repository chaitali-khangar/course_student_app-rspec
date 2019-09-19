require 'rails_helper'

RSpec.describe "courses/show", type: :feature do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "Rspec"
    ))
  end

  scenario "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rspec/)
  end
end
