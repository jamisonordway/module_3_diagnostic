require 'rails_helper'

feature "User can search by zip code" do
  scenario "and see a list of 10 closest stations with info" do
    visit "/"
    station_1 = Station.create(name: 'first', address: '123 street Denver 80203', fuel_types: 'propane', distance: 4, access_times: '24 hours')
    station_2 = Station.create(name: 'second', address: '123 street Denver 80203', fuel_types: 'propane', distance: 3, access_times: '24 hours')
    station_3 = Station.create(name: 'third', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_4 = Station.create(name: 'fourth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_5 = Station.create(name: 'fifth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_6 = Station.create(name: 'sixth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_7 = Station.create(name: 'seventh', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_8 = Station.create(name: 'eighth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 5, access_times: '24 hours')
    station_9 = Station.create(name: 'ninth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 6, access_times: '24 hours')
    station_10 = Station.create(name: 'tenth', address: '123 street Denver 80203', fuel_types: 'propane', distance: 7, access_times: '24 hours')
    station_11 = Station.create(name: 'eleventh', address: '123 street Denver 80203', fuel_types: 'propane', distance: 7, access_times: '24 hours')

    fill_in :q, with: "80203"
    click_on "Locate"
   
    expect(current_path).to eq("/search")
    expect(page).to have_content("10 Closest Stations")
    expect(page).to have_content(station_1.name)
    expect(page).to have_content(station_1.address)
    expect(page).to have_content(station_1.fuel_types)
    expect(page).to have_content(station_1.distance)
    expect(page).to have_content(station_1.access_times)

    expect(page).to have_content(station_10.name)
    expect(page).to have_content(station_10.address)
    expect(page).to have_content(station_10.fuel_types)
    expect(page).to have_content(station_10.distance)
    expect(page).to have_content(station_10.access_times)

    expect(page).to_not have_content(station_11.name)
  end 
end 