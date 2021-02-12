class SubTodo < ApplicationRecord
  belongs_to :todo
  validates_presence_of :todo
  validates_presence_of :title
end
