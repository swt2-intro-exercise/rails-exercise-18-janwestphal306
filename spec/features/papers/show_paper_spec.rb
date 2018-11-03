require 'rails_helper'

describe 'Show Paper Page' do
  it 'should show the authors of the paper' do
    @paper = FactoryBot.create :paper
    @alan = FactoryBot.create :author
    @paper.authors = [@alan]
    visit paper_path(@paper)

    expect(page).to have_text("Alan Turing")
  end
end