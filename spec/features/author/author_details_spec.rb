require 'rails_helper'

describe 'Author Details Page', type: :feature do
  it 'should display author details' do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end

  it 'should have a link to the edit page' do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link "Edit", href: edit_author_path(@alan)
  end

  it 'should have a link to delete an author' do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end
end