require 'rails_helper'

describe "Authors Index Page", type: :feature do
  it "should have a link to the new author form" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end