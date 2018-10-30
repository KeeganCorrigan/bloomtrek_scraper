class Api::V1::ScrapersController < ApplicationController
  before_action :set_website, only: [:index]

  def index
    scraper = WebScraper.new(@website)
    scraper.get_plant_info
    cleaned_data = FlowerValidator.new(scraper.flower_array).clean_data

    render json: cleaned_data
  end

  private

  def set_website
    @website = params[:website] + "&parkname=" + params[:parkname].gsub(" ", "+")
  end
end
