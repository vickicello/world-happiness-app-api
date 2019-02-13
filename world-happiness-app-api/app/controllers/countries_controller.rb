class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def import
    # Country.import(params[:file])
    # puts 'Import succeeded!'
  end
end
