class MainController < ApplicationController
include MainHelper
   
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
  
 def add_to
    Cart.new
    @cart = Cart.new(cart_params)
    if @cart.save
     redirect_to main_checkout_url
    else
     redirect_to :back
    end
 end
  
 def logout
    session[:current_user_id] = nil
    redirect_to root_path
 end 
 
 def remove_items
   @cart = Cart.where(:user_id => params[:userId])
   @cart.each do |cartitem| 
    cartitem.delete
   end
 end
 
 private
   def user_params
    params.permit(:username, :email, :password, :password_confirmation)
   end
   def cart_params
    params.permit(:id,:product_id,:user_id,:size,:colour,:quantity)
   end
end
