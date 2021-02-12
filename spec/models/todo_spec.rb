require 'rails_helper'

RSpec.describe Todo, :type => :model do
  it "is valid with valid attributes" do
    expect(Todo.new).not_to be_valid
end

  describe 'Database' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:title).of_type(:string)}
    it { is_expected.to have_db_column(:done).of_type(:boolean)}
    it { is_expected.to have_db_column(:order).of_type(:integer)}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:user) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:user) }
  end
end
