require 'rails_helper'

RSpec.describe Course, type: :model do
  it "can create Course" do
    course = Course.create(name: "Ruby")
    expect(course.name).to eq("Ruby")
  end

  it "should give error if Course name is not given" do
    course = Course.create
    expect(course.errors[:name]).to eq(["can't be blank"])
    expect(course.name).to eq(nil)
  end
end
