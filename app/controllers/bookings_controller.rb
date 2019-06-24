class BookingsController < ApplicationController
  before_action :set_animal, only: [:new, :show, :create]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_index_path
  end

  private

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end
  def bookings_params
    params.require(:booking).permit(:terms_and_conditions)
  end
end
