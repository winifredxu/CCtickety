require 'rails_helper'

RSpec.feature "Tickets", type: :feature do
  let!(:user) { create(:user) }

  describe "Home page / Listing Tickets" do
    it "displays a title for the page" do
      visit root_path
      expect(page).to have_title "Tickety"
    end
  end

  describe "Creating a ticket" do
    it "creates a tiket and redirects to show page" do
#      login_via_web(user)
      visit new_ticket_path
#      save_and_open_page

      attrs = attributes_for :ticket

      fill_in "Title", with: attrs[:title]
      fill_in "Body", with: attrs[:body]

      click_button "Submit"

      expect(current_path).to eq(ticket_path(Ticket.last))
      expect(Ticket.count).to eq(1)
      expect(page).to have_text /Ticket created successfully./i

    end
  end
end
