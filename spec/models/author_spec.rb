require 'rails_helper'

describe 'Author Model', type: :model do

  it 'should create an object' do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.name).to eq("Alan Turing")
  end
end