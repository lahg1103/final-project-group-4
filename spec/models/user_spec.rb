require 'rails_helper'

RSpec.describe User, type: :model do
  it "has an account_id attribute" do
    user = User.new
    expect(user).to respond_to(:account_id)
  end
end
