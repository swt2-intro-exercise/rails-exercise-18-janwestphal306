require 'rails_helper'

describe 'Papers Index Page' do
  it 'should filter papers by year' do
    @paper = FactoryBot.create :paper
    @paper2 = Paper.create(title: "THE PAPER FROM 1968",venue: "Mind 49: 433-461", year: 1968)

    visit papers_path(year: 1950)
    expect(page).to_not have_text("THE PAPER FROM 1968")
  end
end