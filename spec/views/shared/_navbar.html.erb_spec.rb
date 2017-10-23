require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "shows all items from navbar" do
    let(:user) { create :user }

    it "Bakery" do
      render
      expect(rendered).to have_content "Bakery"
    end

    it "Gallery" do
      render
      expect(rendered).to have_content "Gallery"
    end

    it "Cookies" do
      render
      expect(rendered).to have_content "Cookies"
    end

    it "Cakesicles" do
      render
      expect(rendered).to have_content "Cakesicles"
    end

    it "Meringue Seashells" do
      render
      expect(rendered).to have_content "Meringue Seashells"
    end


    it "Cupcakes" do
      render
      expect(rendered).to have_content "Cupcakes"
    end

  end
end
