class Api::V1::ScrapersController < ApplicationController
  def index
    website = params[:website] + "&parkname=" + params[:parkname].gsub(" ", "+")
    scraper = WebScraper.new(website)
    plant_info = scraper.get_plant_info
    cleaned_data = FlowerValidator.new(scraper.flower_array).clean_data

    render json: cleaned_data
  end
end
