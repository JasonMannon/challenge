class IndexController < ApplicationController

  def index
    flash.now[:notice] = "Thanks for your comment!"
  end

end