class TodosController < ApplicationController

  def get_todos
    render json: Todo.all
  end

  def create
    title = param[:title]
    description = parama[:description]
    priority = param[:priority]

    # add todo to DB
    todo = Todo.create(title: title, description: description, priority: priority)
    render json:todo
  end
end
