require 'rails_helper'

describe "Viewing the cupcakes page" do

  it "shows cupcakes title" do
    visit otherproducts_cupcakes_path

    expect(page).to have_text("Cupcakes")
  end

  it "does not show price" do
    visit otherproducts_cupcakes_path

    expect(page).not_to have_text("Price")
  end
end
