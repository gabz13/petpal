class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :destroy]
  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def update
    @animal.update(params[:animal])
  end

  def destroy
    @animal.destroy
    redirect_to animal_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :size, :energy, :animal_type)
  end

  def set_animal
    @animals = Animal.find(params[:id])
  end
end
