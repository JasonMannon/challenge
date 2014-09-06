class IndexController < ApplicationController

  def index
    if cookies[:user_name] == nil
      flash.now[:notice] = "Thank you for visiting"
      cookies[:user_name] = "user" 
    elsif cookies[:user_name] == "user"
      flash.now[:notice] = "Thank you for visiting!"
      cookies.delete :user_name
    end
  end

end