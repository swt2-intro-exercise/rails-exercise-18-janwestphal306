require 'rails_helper'

describe 'Author Edit Page' do
  it 'should render without errors' do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it 'should change the authors firstname' do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)

    fill_in 'author[first_name]', with: 'Alan Mathison'
    find('input[type="submit"]').click

    @alan.reload
    expect(@alan.first_name).to eq('Alan Mathison')
  end
end