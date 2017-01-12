class Project
  attr_accessor :project_name, :Description
  def initialize(p_name, description)
  	@project_name = p_name
  	@Description = description
  end
  def elevator_pitch
  	puts "name #{@project_name}"
  	puts "description #{@Description}"
  end
end
project1 = Project.new("kamakazi", "It makes you fly")
puts project1.elevator_pitch #prints out Project 1

