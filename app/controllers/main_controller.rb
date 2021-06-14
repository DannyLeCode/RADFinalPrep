class MainController < ApplicationController
  
  def register_to
   @user = User.new(user_params)
   debugger
   if @user.save
     redirect_to root_path
   else
     redirect_to main_login_url
   end
  end
  
 private
   def user_params
    params.permit(:username, :email, :password, :password_confirmation)
   end
   
end
