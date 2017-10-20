require 'rails_helper'

describe "Build your cake page" do

  it "shows cake flavors" do
    visit new_order_path

    expect(page).to have_text("vanilla")
    expect(page).to have_text("chocolate")
    expect(page).to have_text("citroen")
  end

  it "shows cake fillings" do
    visit new_order_path

    expect(page).to have_text("Chocolate Mousse")
    expect(page).to have_text("Oreos Mousse")
    expect(page).to have_text("Apricots")
  end

  it "shows cake style" do
    visit new_order_path

    expect(page).to have_text("Even")
    expect(page).to have_text("Marble")
    expect(page).to have_text("Ombre")
    expect(page).to have_text("Naked")
  end

  it "shows cake drip" do
    visit new_order_path

    expect(page).to have_text("Yes")
    expect(page).to have_text("No")
  end

  it "shows cake decoration" do
    visit new_order_path

    expect(page).to have_text("Candy Party")
    expect(page).to have_text("Gender Reveal")
    expect(page).to have_text("Unicorn")
  end

  it "does not show details about other products" do
    visit new_order_path

    expect(page).not_to have_text("Lolly Cookies")
  end
end
