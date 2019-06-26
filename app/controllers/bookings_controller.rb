class BookingsController < ApplicationController
  before_action :set_animal, only: [:new, :show, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.animal = @animal
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_animal
    @animal = Animal.find(params[:animal_id])
    authorize @animal
  end
  def bookings_params
    params.require(:booking).permit(:terms_and_conditions, :start_date, :end_date)
  end
end
