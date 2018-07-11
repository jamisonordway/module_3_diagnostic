require 'rails_helper'

feature "User can search by zip code" do
  scenario "and see a list of 10 closest stations with info" do
    visit "/"
    
    fill_in :q, with: "80203"
    click_on "Locate"
   
    expect(current_path).to eq("/search")
    expect(page).to have_content("10 closest stations")
  end 
end 