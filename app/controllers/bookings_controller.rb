class BookingsController < ApplicationController
  def new
    @user = current_user
    @poney = Poney.find(params[:poney_id])
    @owner = User.find(@poney.user_id)
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params)
    if @booking.save
      redirect_to mybookings_path
    else
      render :new
    end
  end

  def accept

  end

  def decline

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
end
