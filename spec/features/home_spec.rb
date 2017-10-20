require 'rails_helper'

describe "Viewing the home page" do

  it "shows homemade cake" do
    visit root_path

    expect(page).to have_text("Homemade cakes")
  end

  it "does not photos" do
    visit root_path

    expect(page).not_to have_text("Photos")
  end
end
