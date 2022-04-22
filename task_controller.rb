require_relative 'task'

class TaskController

  def initialize(view, repository)
    @view = view # instance of TaskView
    @repository = repository # instance of TaskRepository
  end

  def display_all
    tasks = @repository.all
    @view.display_all(tasks)
  end

  def create_task
    # ask user what task he / she wants to add
    description = @view.ask_user_what_task_to_add
    # create the task
    new_task = Task.new(description)
    # add to some repository
    @repository.add(new_task)
  end

  def mark_as_completed
    # display all the tasks
    tasks = @repository.all
    @view.display_all(tasks)
    # ask user which one
    user_index = @view.ask_which_index
    # mark as complete
    # 1. fetch data from repo
    task_to_be_marked = @repository.find(user_index)
    # 2. mark task as completed
    task_to_be_marked.complete!
  end

  def delete_task
    tasks = @repository.all
    @view.display_all(tasks)
    # ask user which one
    user_index = @view.ask_which_index
    @repository.delete(user_index)
  end

end
