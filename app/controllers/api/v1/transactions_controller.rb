class API::V1::TransactionsController < ApplicationController

    before_action :set_account
    
    def index
       @transactions = @account.transactions
       render json: @transactions
    end 

    def create
        @transaction = Transaction.find(params[:id])
        render json: @transaction
    end 

    def show
        
    end 

    def destroy
       
    end 

    private

    def set_account
        @account Account.find(params[:account_id])
    end 

    def transaction_params
        #the params require(.require) an account and permit (.permit) the attributes specified 
        params.require(:transaction).permit(:amount ,:account_id, :kind, :date, :description)
    end  

end
