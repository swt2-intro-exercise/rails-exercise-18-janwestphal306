require 'rails_helper'

describe 'Author Model', type: :model do

  it 'should do something' do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
  end
end