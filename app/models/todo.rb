class Todo < ApplicationRecord
  belongs_to :user
  after_create :set_order
  validates_presence_of :user
  validates_presence_of :title
  has_many :sub_todos, dependent: :destroy
  accepts_nested_attributes_for :sub_todos

  def set_order
    self.order = self.user.todos.count
  end
end
