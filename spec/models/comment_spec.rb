require 'rails_helper'

describe "Comment" do
  it "is valid with a name" do
    comment = Comment.new(name: "Test comment1", email: "phamkhanh@gmail.com")
    expect(comment).to be_valid
  end

  it "is invalid without name" do
    comment = Comment.new(email: "phamkhanh101111@email.com")
    comment.valid?
    expect(comment.errors[:name]).to include("can't be blank")
  end

  it "is invalid without email" do
    comment = Comment.new(name: "khanh pham")
    comment.valid?
    expect(comment.errors[:email]).to include("can't be blank")
  end
end
