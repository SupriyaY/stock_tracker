class Api::StocksController < ApplicationController
 def index
        @stocks = Owner.find(params[:owner_id]).stocks
       
        #  @stocks = Stocks.all 
        render json: @stocks
    end

    def show
        @stocks = Stock.find(params[:id])
        render json: @stock
    end

    def create
      @owner = Owner.find(params[:owner_id])
      @owner = @owner.stocks.new(stock_params)

      @owner.stocks << @stock
      @owner.save!

      render json: @stock
   
  end

    def update
         @stock = Stock.find(params[:id])
         @stock.update!(stock_params)
        puts "We love clothes!"
         render json: @stock
    end

       def destroy
        @stock = Stock.find(params[:id]).delete
        render status: :ok
    
    end

       private

      def stock_params
     params.require(:stock).permit(:supplier_name, :supplier_address, :poc_name, :poc_email, :poc_phone, 
     :inventory_category, :inventory_name, :inventory_amount)
      end
  end
