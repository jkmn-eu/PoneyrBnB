class PoneysController < ApplicationController
  before_action :find_poney, only: [:show, :edit, :update, :destroy]

  def index
    @poneys = Poney.all
  end

  def new
    @poney = Poney.new
  end

  def show
  end

  def edit
  end

  def create
    @poney = Poney.new(poney_params)
    @poney.user_id = current_user.id
    if @poney.save
      redirect_to poney_path(@poney)
    else
      render :new
    end
  end

  def update
    if @poney.update(poney_params)
      redirect_to @poney
    else
      render :edit
    end
  end

  def myponies
    @myponies = Poney.where(user_id: current_user.id)
  end

  def destroy
    @poney.destroy
  end

  private

  def find_poney
    @poney = Poney.find(params[:id])
  end

  def poney_params
    params.require(:poney).permit(:user_id, :name, :nature, :color, :height, :price_per_diem, :special_power, :profile_pic_url)

  end
end
