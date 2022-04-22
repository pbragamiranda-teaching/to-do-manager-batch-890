class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    # display all the options
    # ask the user what to do
    # tell controller what to do
    response = ""
    until response == 5
      puts "1- Display all Tasks"
      puts "2- Create a Task"
      puts "3- Mark a task as completed"
      puts "4- Delete a task"
      puts "5- to quit"

      option = gets.chomp.to_i

      case option
      when 1
        @controller.display_all
      when 2
        @controller.create_task
      when 3
        @controller.mark_as_completed
      when 4
        @controller.delete_task
      when 5
        puts "Bye"
        response = 5
      end
    end
  end
end
