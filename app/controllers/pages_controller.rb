class PagesController < ActionController::Base
  def home
    @users = User.all
    @cats = Cat.all
    todos = Todos.all

    @finised_tasks = Array.new
    @unfinished_tasks = Array.new

    todos.each do |t|
      if t.finished
        @finished_tasks.push(t)
      else
        @unfinished_tasks.push(t)
      end
    end
  end
end
