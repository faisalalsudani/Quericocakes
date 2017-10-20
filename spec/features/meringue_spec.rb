require 'rails_helper'

describe "Viewing the Meringue Seashells page" do

  it "shows Meringue Seashells" do
    visit otherproducts_meringue_path

    expect(page).to have_text("Meringue Seashells")
  end

  it "does not show featured in the media" do
    visit otherproducts_meringue_path

    expect(page).not_to have_text("Media")
  end
end
