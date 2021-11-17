require 'rails_helper'

RSpec.describe User, type: :model do
  it "User is valid" do
    user = User.new(
      name: "Luciano", 
      email: "luciano@teste.com", 
      phone: "12345678",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "12345678"
    )

    expect(user).to be_valid
  end
  
  it "User is not valid" do
    user = User.new(
      name: "Luciano", 
      email: "luciano@teste.com", 
      phone: "12345678",
      password: "12345678"
    )

    expect(user).to_not be_valid
  end

  it "User should have a name" do
    user = User.new(
      email: "luciano@teste.com", 
      phone: "12345678",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "12345678"
    )

    expect(user).to_not be_valid
  end
end
