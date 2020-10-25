require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative 'team.rb'
require_relative 'series.rb'

class Scraper

    def initialize 
    end

     # Grabs the HTML Document off of the internet to be used # !!DONE!!
    def get_page
        @html_doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2020_NBA_playoffs"))
        return @html_doc
    end
   

    # Creates a new Team Object for every NBA Team in the Playoffs !!DONE!!
    def get_teams
        self.get_page
        # this step above sets @ec_HtmlTable equal to the HTML code responsible for displaying !!DONE!!
        # the top 8 Eastern Conference Teams, and their seed, record, and name                 !!DONE!!
        i = 0
        @ecTeams = []
        @wcTeams = []
        # Tables are divided by conference. Table 1 is Eastern !!DONE!!
        @ec_HtmlTable = @html_doc.css(".wikitable")[1]
        until i == 8 
            newTeamHtml = @ec_HtmlTable.css("tr")[2 + i].text.split("\n")
            thisRank = newTeamHtml[1].to_i
            thisName = newTeamHtml[2]
            thisRecord = newTeamHtml[3]
            newTeam = Team.create(thisName, thisRank, 'Eastern', thisRecord)
            @ecTeams << newTeam
            i = i + 1
        end
        # Tables are divided by conference. Table 2 is Western !!DONE!!
        @wc_HtmlTable = @html_doc.css(".wikitable")[2]
        j = 0
        until j == 8
            newTeamHtml = @wc_HtmlTable.css("tr")[2 + j].text.split("\n")
            thisRank = newTeamHtml[1].to_i
            thisName = newTeamHtml[2]
            thisRecord = newTeamHtml[3]
            newTeam = Team.create(thisName, thisRank, 'Western', thisRecord)
            @wcTeams << newTeam
            j = j + 1
        end
        
    end

    # this is only to be run after #get_teams, as it constructs there series based off of the HTML file and uses the Teams as variables
    # !!DONE!!
    def get_east_series
        self.get_page
        self.get_teams
        # listOfSeries has a value of every single playoff matchup (except the finals)
        # listOfSeries[0] is the play-in game so that will be removed
        listOfSeries = @html_doc.css("h4").text.split("[edit]")
        listOfSeries.delete_at(0)
        i = 0
        listOfSeries.each do | selected |
            # 0, 1, 2, 3 are EC Round One
            if (i < 4)
                Series.create("Eastern", "First Round", selected)
            # 8 and 9 are Bucks/Heat and Celtics/Raptors
            elsif (i >= 8 && i < 10)
                Series.create("Eastern", "Second Round", selected)
            # 12 is ECF
            elsif (i == 12)
                Series.create("Eastern", "Conference Finals", selected)
            end
            i += 1
        end
    end

    # this is only to be run after #get_teams, as it constructs there series based off of the HTML file and uses the Teams as variables
    # !!DONE!!
    def get_west_series
        self.get_page
        self.get_teams
        # listOfSeries has a value of every single playoff matchup (except the finals)
        # listOfSeries[0] is the play-in game so that will be removed
        listOfSeries = @html_doc.css("h4").text.split("[edit]")
        listOfSeries.delete_at(0)
        i = 0
        listOfSeries.each do | selected |
            # 4, 5, 6, 7, are WC first round
            if (i >= 4 && i < 8)
                Series.create("Western", "First Round", selected)
            # 10 and 11 are Lakers/Rockets Nuggets/Clippers
            elsif (i >= 10 && i < 12)
                Series.create("Western", "Second Round", selected)
            # 12 is ECF
            elsif (i == 13)
                Series.create("Western", "Conference Finals", selected)
            end
            i += 1
        end
    end

end