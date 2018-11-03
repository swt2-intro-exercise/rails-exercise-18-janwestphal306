require 'rails_helper'

describe 'Paper Edit Page' do
  it 'should display a multiple select' do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)

    expect(page).to have_css('select[multiple]')
  end

  it 'should update selected authors for paper authors' do
    @alan = FactoryBot.create :author
    @peter = FactoryBot.create(:author, first_name: "Peter", last_name: "Plagitarius")
    @paper = FactoryBot.create(:paper, authors: [@alan])
    visit edit_paper_path(@paper)

    @select_authors = find "select"
    @select_authors.select @peter.name

    find('input[type="submit"]').click
    @paper.reload

    expect(@paper.authors).to include(@peter)
  end
end