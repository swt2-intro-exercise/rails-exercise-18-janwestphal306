require 'rails_helper'

describe 'Author Edit Page' do
  it 'should render without errors' do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end
end