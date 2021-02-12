class AddOrderToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :order, :integer
  end
end
