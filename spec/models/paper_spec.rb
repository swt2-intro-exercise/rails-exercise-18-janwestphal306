require 'rails_helper'

RSpec.describe Paper, type: :model do
  it 'should reject papers without a title' do
    @paper = FactoryBot.build(:paper, title: "")
    expect(@paper).to_not be_valid
  end
end
