require 'rails_helper'

describe "Authors Index Page", type: :feature do
  it "should have a link to the new author form" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should display authors" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_text "Alan"
    expect(page).to have_text "Turing"
    expect(page).to have_text "http://wikipedia.de/Alan_Turing"
    expect(page).to have_link "Show", href: author_path(@alan)
  end
end