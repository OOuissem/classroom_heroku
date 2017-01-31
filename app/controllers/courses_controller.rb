class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    begin
      @course = Course.find(params["id"])      
    rescue ActiveRecord::RecordNotFound => error
      redirect_to '/courses/index'
    rescue NameError => error
      redirect_to '/'
    end
    # @c_students = @course.students # Student.where("course_id = ?",params["id"])
    # @c_students = @c_students.to_a unless @c_students.nil?
  end
end
