class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @animals = policy_scope(Animal)
  end

  def show
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    authorize @animal
    if @animal.save
      redirect_to animal_path(@animal), notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to @animal, notice: 'Restaurant was successfully updated.'
    else
      redner :edit
    end
  end

    def destroy
      @animal.destroy
      redirect_to animals_path
    end

    private

    def animal_params
      params.require(:animal).permit(:name, :description, :size, :energy, :animal_type)
    end

    def set_animal
      @animal = Animal.find(params[:id])
      authorize @animal
    end
end
