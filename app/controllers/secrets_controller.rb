class SecretsController < ApplicationController
    
    def index

    end
    
    def show
        if !session[:name]
            redirect_to controller: 'sessions', action: 'new'
        end

    end

end
