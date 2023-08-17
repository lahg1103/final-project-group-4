require 'rails_helper'

RSpec.feature "View Gradebook Link" do
  scenario "does not display the link for non-signed-in users" do
    visit root_path

    expect(page).not_to have_link("View Gradebook")
  end
end
