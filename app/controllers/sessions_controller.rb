class SessionsController < ApplicationController

    def new
    end
  
    def create
      # byebug
      if params[:name].empty? || params[:name] == nil
        redirect_to controller: 'sessions', action: 'new'
      else
        session[:name] = params[:name]
        redirect_to controller: 'secrets', action: 'index'
        end
    end
  
    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end
end
