class SessionsController < ApplicationController

  def new
  end

  def create
    if !!params[:name]
      session[:username] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
  end

  def destroy
    session.delete :username
  end

end
