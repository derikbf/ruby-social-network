require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "User can follow another user" do

    matt = FactoryBot.create(:user)
    bobb = FactoryBot.create(:user)

    Subscription.create(followed: bobb, followed_by: matt)

    expect(bobb.followers.count).to eql 1
    expect(bobb.followers).to include matt

    expect(matt.following.count).to eql 1
    expect(matt.following).to include bobb

    expect(bobb.following.count).to eql 0
    expect(bobb.following).to_not include matt
    
    expect(matt.followers.count).to eql 0
    expect(matt.followers).to_not include bobb

    donald = FactoryBot.create(:user)

    Subscription.create(followed: bobb, followed_by: donald)

    expect(bobb.followers.count).to eql 2
    expect(bobb.followers).to include donald

    expect(donald.following.count).to eql 1
    expect(donald.following).to include bobb

  end
end
