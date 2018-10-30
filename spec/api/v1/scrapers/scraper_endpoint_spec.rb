require "rails_helper"

describe "Scraper API" do
  describe "GET /api/v1/scraper?website=<plant_website>" do
    it "scrapes CSU extension plant website and return JSON objects" do
      plant_website = "https://coloradoplants.jeffco.us/parksearch.do?name=11&parkname=Castlewood+Canyon+"

      get "/api/v1/scraper?website=#{plant_website}"

      flowers = JSON.parse(response.body, symbolize_names: true)
      flower = flowers.first

      expect(response).to be_successful
      expect(flowers).to be_a(Array)
      expect(flower).to be_a(Array)
      expect(flower[0]).to be_a(String)
      expect(flower[1]).to be_a(String)
      expect(flower[2]).to be_a(String)
      expect(flower[3]).to be_a(String)
      expect(flower[4]).to be_a(String)
      expect(flower[5]).to be_a(Integer)
      expect(flower[6]).to be_a(Integer)
      expect(flower[7]).to be_a(String)
      expect(flower.length).to eq(8)
    end
  end
end
