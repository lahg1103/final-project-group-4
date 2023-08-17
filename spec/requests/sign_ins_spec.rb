require 'rails_helper'

RSpec.describe 'Sign In Page', type: :request do
  it 'does not show the "Sign up" link' do
    get new_user_session_path
    
    expect(response).to have_http_status(:ok)
    expect(response.body).not_to include('Sign up')
  end

  # Add more tests for sign-in functionality here...
end
