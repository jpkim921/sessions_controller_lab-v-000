class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/sessions/new"
      redirect_to sessions_new_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to "/"
    end
  end


  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
end
