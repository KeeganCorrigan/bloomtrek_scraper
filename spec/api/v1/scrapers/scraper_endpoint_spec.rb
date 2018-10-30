require "rails_helper"

describe "Scraper API" do
  describe "GET /api/v1/scraper?website=<plant_website>" do
    it "scrapes CSU extension plant website and return JSON objects" do
      plant_website = "https://coloradoplants.jeffco.us/parksearch.do?name=11&parkname="

      get "/api/v1/scraper?website=#{plant_website}"

      flowers = JSON.parse(response.body, symbolize_names: true)
      flower = flowers.first

      expect(response).to be_successful
      expect(flowers).to be_a(Array)
      expect(flower).to be_a(Array)
      expect(flower.length).to eq(7)
    end
  end
end
