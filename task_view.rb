class TaskView

  def ask_user_what_task_to_add
    puts "What task do you want to add?"
    print ">"
    response = gets.chomp
    return response
  end

  def display_all(tasks)
    # "1. [ ] Name of Taks"
    tasks.each_with_index do |task, index|
      done = task.completed? ? "[x]" : "[ ]"
      puts "#{index + 1}. #{done} #{task.description}"
    end
  end

  def ask_which_index
    puts "Which one?"
    print ">"
    return gets.chomp.to_i - 1
  end

end
