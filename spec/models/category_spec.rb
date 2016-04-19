require 'rails_helper'

describe "Category" do
  it "is valid with a name" do
    category = Category.new(name: "phamkhanh")
    expect(category).to be_valid
  end

  it "is invalid without a name"
end

