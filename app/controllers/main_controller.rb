class MainController < ApplicationController
  
  def register_to
   @user = User.new(user_params)
   if @user.save
     redirect_to root_path
   else
     @error_string = "Error \n"
     if @user.errors.any?
       @user.errors.full_messages.each do |message| 
         @error_string += (message + "\n")
       end
     end  
     redirect_to main_registration_url, notice: @error_string
   end
  end
  
  def login_to
    @notification = ""
    @current_user = User.find_by(username:params[:username]).try(:authenticate, params[:password])
    if @current_user == false || @current_user == nil
      @notification = "Incorrect username or password"
      redirect_to main_login_url, notice: @notification
    else
     session[:current_user_id] = @current_user.id
     redirect_to root_path
    end
  end
  
 def logout
    session[:current_user_id] = nil
    redirect_to root_path
 end 
  
 private
   def user_params
    params.permit(:username, :email, :password, :password_confirmation)
   end
   
end
