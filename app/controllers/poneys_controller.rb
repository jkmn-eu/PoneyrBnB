class PoneysController < ApplicationController
  before_action :find_poney, only: [:show, :edit, :update, :destroy]

  def index
    @poney = Poney.all
  end

  def new
    @poney = Poney.new
  end

  def show
  end

  def edit
  end

  def create

  end

  def update
    if @poney.update(poney_params)
      redirect_to @poney
    else
      render :edit
    end
  end

  def destroy
    @poney.destroy
  end

  private

  def find_poney
    @poney = Poney.find(params[:id])
  end

  def poney_params
    params.require(:poney).permit(:name, :nature, :color, :height, :price_per_diem, :special_power, :profile_pic_url)

  end
end
