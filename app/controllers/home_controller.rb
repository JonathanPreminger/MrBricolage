class HomeController < ApplicationController
  def index
    @todos = current_user.todos.all.order(order: :asc)
  end

end
