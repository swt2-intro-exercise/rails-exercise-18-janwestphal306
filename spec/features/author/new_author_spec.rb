require 'rails_helper'

describe "New author page", type: :feature do

  it "should render without error" do
    visit new_author_path
  end

  it "should have an input field" do
    visit new_author_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
    expect(page).to have_css('input[type="submit"]')
  end

  it "should show an error message for a author without last name" do
    visit new_author_path
    fill_in "author[first_name]", with: "Alan"
    fill_in "author[homepage]", with: "http://wikipedia.de/Alan_Turing"
    find('input[type="submit"]').click

    expect(page).to have_css("div#error_explanation")
  end
end