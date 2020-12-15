class API::V1::AccountsController < ApplicationController

    def index
        @accounts = Account.all
        render json: @accounts
    end 

    def create
        @account = Account.new(account_params)
        if @account.save
            render json: @account 
        else 
            render json: {error: 'Error creating account.'}
        end 
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
