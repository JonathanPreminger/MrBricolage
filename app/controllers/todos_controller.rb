class TodosController < ApplicationController
  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      flash[:success] = "todo created"
      redirect_to root_path
    else
      flash[:error] = "todo failed to be create"
      redirect_to root_path
    end
  end

  def new
    @todo = Todo.new(params[:todo])
  end

  def edit
    @todo = Todo.find(params[:id])
  end


  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(todo_params)
    redirect_to root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :order, :user_id, :done, :sub_todos_attributes => [:title])
  end
end
