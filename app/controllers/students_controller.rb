class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
    render "new"
  end

  def create
    @student = Student.create(first_name: params[first_name], second_name: params[second_name])
    redirect_to "new"
  end

  def show
    @student = Student.find(params[:id])
  end

end
