class StudentsController < ApplicationController
  def index
    @students = Students.all
  end

  def show
    @sudent = params[:student]
  end

  def new
    @student = Student.new
  end
end