require 'rails_helper'

RSpec.describe SubTodo, :type => :model do
  it "is valid with valid attributes" do
    expect(SubTodo.new).not_to be_valid
end

  describe 'Database' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:title).of_type(:string)}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:todo) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:todo) }
  end
end
