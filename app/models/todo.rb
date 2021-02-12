class Todo < ApplicationRecord
  belongs_to :user
  has_many :sub_todos, dependent: :destroy
  
  accepts_nested_attributes_for :sub_todos

  validates_presence_of :user
  validates_presence_of :title

  after_create :set_order

  def set_order
    self.order = self.user.todos.count
  end
end
