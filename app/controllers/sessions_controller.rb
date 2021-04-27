class SessionsController < ApplicationController
  def new
  end
  def create
      if params[:name].nil? || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new' 
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      end
  end
  def destroy
    session[:name] = nil if !session[:name].nil?
  end
end
