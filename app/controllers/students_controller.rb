class StudentsController < ApplicationController

  def index
    @students = Student.all
  end
  
  def new
    @new_student = Student.new
  end

  def create 
  	new_student = Student.new(student_params) #Course.new(course_params) 
  	if new_student.save 
  	  flash[:notice] = "Student is added!"
    	redirect_to root_path 
  	else 
  	  flash[:warning] = "Error entering data in db!"
    	render 'new' 
  	end 
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path, :notice => "Student is delete!"
  end

  #require(:new_course). testing to see
  private
  def student_params
      params.require(:student).permit(:major, :first_name, :last_name, :email, :student_id, :grad_year, :credits_taken)
  end
end
