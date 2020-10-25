require 'pry'
require_relative '../lib/scraper.rb' 
require_relative '../lib/team.rb'
require_relative '../lib/series.rb'

mainScrape = Scraper.new()
mainScrape.get_teams 

# These will test operations 1 and 2
puts "West Seeding: "
puts Team.getWestRanked  # SUCCESS
puts "East Seeding: "
puts Team.getEastRanked  # SUCCESS

# This will test operation 3
mainScrape.get_east_series # SUCCESS
mainScrape.get_west_series # SUCCESS
Series.getAll.each do | selected |
    puts selected.name
end
Series.display # SUCCESS


