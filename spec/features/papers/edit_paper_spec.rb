require 'rails_helper'

describe 'Paper Edit Page' do
  it 'should display a multiple select' do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)

    expect(page).to have_css('select[multiple]')
  end
end