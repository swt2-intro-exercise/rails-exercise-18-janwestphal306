require 'rails_helper'

RSpec.describe Paper, type: :model do
  it 'should reject papers without a title' do
    @paper = FactoryBot.build(:paper, title: "")
    expect(@paper).to_not be_valid
  end

  it 'should reject papers without venue' do
    @paper = FactoryBot.build(:paper, venue: "")
    expect(@paper).to_not be_valid
  end

  it 'should reject papers without year' do
    @paper = FactoryBot.build(:paper, year: "1998.5")
    expect(@paper).to_not be_valid
  end
end
