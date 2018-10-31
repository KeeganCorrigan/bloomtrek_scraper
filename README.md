# README

### About

This is a small scraper meant specifically for use with the [CSU extension plant database](https://coloradoplants.jeffco.us/). It will pull out and format specific plant data for flowers located in specific parks. It is used to populate the database of [bloomtrek](https://github.com/brickstar/bloomtrek-api).

This API is deployed at:

#### https://bloomtrek-api-scraper.herokuapp.com/

### Technology Used

* [Rails version: 5.1.6](https://rubyonrails.org/)
* [Ruby version: 2.4.3](https://www.ruby-lang.org/en/)
* [Rspec/Capybara](http://rspec.info/documentation/)

### How to set up the API to run locally.

1. Clone this repo
    * `$ git clone https://github.com/KeeganCorrigan/bloomtrek_scraper.git`

2. Run these commands:
    * `$ cd bloomtrek_scraper`
    * `$ bundle update`
    
    * If you want to run a local test suite `$ rspec`
    
### Endpoint

1. `GET "/api/v1/scraper?website=<website_name>"`

SPECIAL NOTE: This is an end point built solely for scraping data from the CSU extension database. It will only accept web addresses from the plant database, like: `https://coloradoplants.jeffco.us/parksearch.do?name=12&parkname=Custer+County+`

The output is in the following format:

```
[
  "http://extension.colostate.edu/county/jeffco/natural/plant_images/adenolinum_lewisii_1_378x400.jpg",
  "WILD BLUE FLAX",
  "blue flax",
  "Adenolinum lewisii",
  "stigma capitate (headed); plant produces many branches from the base; styles of same length on different plants.",
  5,
  8,
  "dry slopes, forest clearings, roadsides."
],
```

### Collaborators

Backend Developers: [Matt Bricker](https://github.com/brickstar) and [Keegan Corrigan](https://github.com/keegancorrigan/)

Frontend Developers: [Laura Whitaker](https://github.com/laurakwhit) and [Chris](https://github.com/chrisboylen)

