class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy accept decline]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def owner_bookings
    @bookings = Booking.where(grandparent: current_user.grandparents)
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
    @booking.price = @grandparent.daily_rate
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

# PATCH /offers/:id/accept
  # @TODO authorize that the user should actually be allowed the offer
  def accept
    if @booking.accepted!
      redirect_to bookings_path(@booking), notice: 'Booking accepted'
    else
      redirect_to bookings_path(@booking), notice: 'Booking could not be accepted - please try again'
    end
  end

    # PATCH /offers/:id/reject
  # @TODO authorize that the user should actually be reject the offer
  def decline
    if @booking.declined!
      redirect_to bookings_path, notice: 'Booking rejected'
      @booking.destroy
    else
      redirect_to bookings_path, notice: 'Booking could not be rejected - please try again'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
