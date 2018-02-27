class SessionsController < ApplicationController

  def new
  end

  def create
    session[:username] = params[:name]
    render 'index'
  end

  def destroy
    session.clear
  end
