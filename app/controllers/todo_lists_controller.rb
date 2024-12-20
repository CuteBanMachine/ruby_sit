class TodoListsController < ApplicationController
    def index
      @todo_lists = TodoList.all
      render json: @todo_lists
    end
  
    def create
      @todo_list = TodoList.new(todo_list_params)
      if @todo_list.save
        render json: @todo_list, status: :created
      else
        render json: @todo_list.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def todo_list_params
      params.require(:todo_list).permit(:title, :user_id)
    end
  end
  