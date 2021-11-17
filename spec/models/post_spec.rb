require 'rails_helper'

RSpec.describe Post, type: :model do
  it "Post is valid" do
    
    post = FactoryBot.build(:post)
    
    expect(post).to_not be_valid
    
    post.user = FactoryBot.build(:user)
    post.save
    
    expect(post).to be_valid
  end  
  
  it "Post belongs to user" do
    user = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: user)

    expect(post.user).to eql user
  end

  it "User has many posts" do
    user = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: user)

    expect(user.posts).to include post
  end
end
