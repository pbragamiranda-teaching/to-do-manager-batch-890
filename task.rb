class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @checked = false
  end

  def complete!
    @checked = true
  end

  def completed?
    @checked
  end
end
