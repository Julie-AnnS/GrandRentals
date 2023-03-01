class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @grandparent = Grandparent.find(params[:grandparent_id])
    @booking = Booking.new
  end

  def create
    @grandparent = Grandparent.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grandparent = @grandparent
    @booking.price = 12
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   booking.update(booking_params)
  #   redirect_to booking_path(@booking)
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
