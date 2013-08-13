class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])

    if @student.save
      redirect_to student_path(@student)
    else
      flash[:error] = "Please correct the errors below."
    end
  end
end