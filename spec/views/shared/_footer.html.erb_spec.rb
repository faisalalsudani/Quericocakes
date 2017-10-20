require 'rails_helper'

describe "shared/_footer.html.erb" do
  before { sign_in user }

  context "shows all items from navbar" do
    let(:user) { create :user }

    it "Que Rico Cakes" do
      render
      expect(rendered).to have_content "Que Rico Cakes"
    end

    it "Adress" do
      render
      expect(rendered).to have_content "Ladogameer 83"
    end

    it "Telephone" do
      render
      expect(rendered).to have_content "06 38 05 95 77"
    end

    it "Email" do
      render
      expect(rendered).to have_content "info@quericocakes.nl"
    end
  end
end