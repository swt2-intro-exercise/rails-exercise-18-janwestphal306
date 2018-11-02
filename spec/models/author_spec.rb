require 'rails_helper'

describe 'Author Model', type: :model do

  it 'should create an object' do
    @author = FactoryBot.create :author
    expect(@author.first_name).to eq("Alan")
    expect(@author.last_name).to eq("Turing")
    expect(@author.homepage).to eq("http://wikipedia.de/Alan_Turing")
  end

  it "should display full name" do
    @author = FactoryBot.create :author
    expect(@author.name).to eq("Alan Turing")
  end
end