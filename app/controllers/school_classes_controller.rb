class SchoolClassesController < ApplicationController

def new
  @school_class = SchoolClass.new
end

def create
  @school_class = SchoolClass.create(school_class_params)
  redirect_to @school_class
end

def edit
 @school_class = SchoolClass.find_by(params[:id])
end

def update
  @school_class = SchoolClass.find_by(params[:id])
  @school_class.update(school_class_params)
  redirect_to @school_class
end

def show
  @school_class = SchoolClass.find_by(params[:id])
end

def school_class_params
  params.require(:school_class).permit(:title, :room_number)
end

end