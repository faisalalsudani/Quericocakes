require 'rails_helper'

describe "Viewing the cookies page" do

  it "shows cookies" do
    visit otherproducts_cookies_path

    expect(page).to have_text("Lolly Cookies")
  end

  it "does not show cake's details" do
    visit otherproducts_cookies_path

    expect(page).not_to have_text("Cake flavor")
  end
end
