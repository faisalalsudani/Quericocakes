require 'rails_helper'

describe "Viewing the cakesicles page" do

  it "shows cakesicles" do
    visit otherproducts_cakesicles_path

    expect(page).to have_text("Cake met chocolade dip")
  end

  it "does not show coming soon" do
    visit otherproducts_cakesicles_path

    expect(page).not_to have_text("Coming soon")
  end
end
