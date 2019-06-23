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
    @booking = Booking.new
    @booking.animal = @animal
    @user = User.find(params[:user_id])
    if @booking.save
      redirect_to bookings_index_path
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
end
