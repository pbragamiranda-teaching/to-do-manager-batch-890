require_relative "task"
require_relative "router"
require_relative "task_view"
require_relative "task_repository"
require_relative "task_controller"


view = TaskView.new
repository = TaskRepository.new
controller = TaskController.new(view, repository)

router = Router.new(controller)
router.run
