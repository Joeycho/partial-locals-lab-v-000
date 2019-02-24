class ClassroomsController < ApplicationController
  def show
    binding.pry
    @classroom = Classroom.find(params[:id])
  end

  def index
    @classrooms = Classroom.all
  end
end
