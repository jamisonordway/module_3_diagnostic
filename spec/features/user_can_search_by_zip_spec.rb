require 'rails_helper'

feature "User can search by zip code" do
  scenario "and see a list of 10 closest stations with info" do
    visit "/"
    station_1 = Station.new(name: 'first', address: '123 street Denver 80203', fuel_types: 'propane', distance: 4, access_times: '24 hours')
    station_2 = Station.new(name: 'second', address: '123 street Denver 80203', fuel_types: 'propane', distance: 3, access_times: '24 hours')
    station_3 = Station.new(name: 'third', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_4 = Station.new(name: 'fourth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_5 = Station.new(name: 'fifth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_6 = Station.new(name: 'sixth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_7 = Station.new(name: 'seventh', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_8 = Station.new(name: 'eighth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_9 = Station.new(name: 'ninth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 6, access_times: '24 hours')
    station_10 = Station.new(name: 'tenth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 7, access_times: '24 hours')
    station_11 = Station.new(name: 'eleventh', address: '123 street Denver 80203', fuel_types: 'propane', distance: 7, access_times: '24 hours')

    fill_in :q, with: "80203"
    click_on "Locate"
   
    expect(current_path).to eq("/search")
    expect(page).to have_content("10 Closest Stations")


    expect(page).to_not have_content(station_11.name)
  end 
end 