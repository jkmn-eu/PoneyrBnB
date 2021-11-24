class BookingsController < ApplicationController
  def new
    @user = current_user
    @poney = Poney.find(params[:poney_id])
    @owner = User.find(@poney.user_id)
    @booking = Booking.new
  end

  def create

    @booking = Booking.new
    if @booking.save
      redirect_to booking_path(@booking)
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

  def my_bookings
    @bookings = Booking.all
  end
end
