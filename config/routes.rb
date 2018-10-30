Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/scraper', to: 'scrapers#index'
    end
  end
end
