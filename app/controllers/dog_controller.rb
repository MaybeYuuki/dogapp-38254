class DogController < ApplicationController
  def index
    @dogs = Dog.All
  end
end
