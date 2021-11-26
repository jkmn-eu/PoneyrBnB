class BookingsController < ApplicationController
  before_action :find_poney, :find_user, only: %i[new create]

  def new
    @owner = User.find(@poney.user_id)
    @booking = Booking.new
  end

  def create
    @owner = User.find(@poney.user_id)
    @poney = Poney.find(params[:poney_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save
      @booking.status = 'pending'
      redirect_to mybookings_path
    else
      render :new
    end
  end

  def mybookings
    @reservations = Booking.where(user_id: current_user.id)
    @reservationasbooker = Booking.where(user_id: current_user.id)
  end

  def accept
    @booking = Booking.find(Poney.find(params[:id]).user_id)
    @booking.status = "accepted"
  end

  def decline
    @booking = Booking.find(Poney.find(params[:id]).user_id)
    @booking.status = "declined"
  end

  def destroy
    @booking = Booking.find(params[:booking])
    @booking.destroy
    redirect_to booking_path
  end

  #def mybookings
    #@user = current_user
    #@bookings = Booking.where(user_id: @user.id)
  #end


  private

  def find_poney
    @poney = Poney.find(params[:poney_id])
  end

  def find_user
    @user = current_user
  end

  def booking_params
    params.permit(:poney_id)
  end
end
