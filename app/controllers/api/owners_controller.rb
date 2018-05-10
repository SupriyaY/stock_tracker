class Api::OwnersController < ApplicationController
        def index
    @owners = Owner.all
    render json: @owners
  end

  def create
    @owner = Owner.create!(owner_params)
    render json: @owner
  end

  def show
    @owner = Owner.find(params[:id])
    @stocks = @owner.stocks
   
    render json: {
      owner: @owner,
      stocks: @stocks
  }
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update!(owner_params)

    render json: @owner
  end

  def destroy
    @owner = Owner.find(params[:id]).delete

    render status: :ok
  end

  private

  def _params
    params.require(:owner).permit(:name, :photo_url, :business_name, :business_description)
end
end 

