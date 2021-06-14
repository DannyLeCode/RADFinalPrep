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
  
 private
   def user_params
    params.permit(:username, :email, :password, :password_confirmation)
   end
   
end
