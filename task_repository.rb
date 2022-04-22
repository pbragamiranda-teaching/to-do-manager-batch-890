class TaskRepository

  def initialize
    @tasks = [] # an array of instances of the class Task
  end

  def add(task)
    @tasks << task # Task
  end

  def delete(index)
    @tasks.delete_at(index)
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

end
