class API::V1::AccountsController < ApplicationController

    def index
        
    end 

    def create
    end 

    def show
    end 

    def destroy
    end 

    private

    def account_params
        #the params require(.require) an account and permit (.permit) the attributes specified 
        params.require(:account).permit(:name, :balance)
    end 

end
