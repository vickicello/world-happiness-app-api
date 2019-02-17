class Api::CountriesController < ApplicationController
  # before_action :set_country
  
  def index
    @countries = Country.all
    render json: @countries
  end

  # def show
  #   render json: @country
  # end

  # private 

  # def set_country
  #   @country = Country.find_by(id: params[:id])
  # end
end
