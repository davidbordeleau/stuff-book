class PokemonsController < ApplicationController
  before_action :find_pokemon, only: [:show, :destroy]

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
  end

  def destroy
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :picture, :ability)
  end

  def find_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end
