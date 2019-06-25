class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @animal = Animal.all.sample

  end
end
