require 'pry'
require_relative 'team.rb'

class Series

    @@allSeries = []
    attr_accessor :conf, :round, :team1, :team2

    def initialize(conf, round, team1, team2)
        @conf = conf
        @round = round
        @team1 = team1
        @team2 = team2
    end

    # This will be used in the Scraper Class to properly construct series based off the HTML
    def self.create(conf, round, string)
        matchups = string.split("vs.")
        t1 = matchups[0]
        t2 = matchups[1]

        t1Name = t1.split(") ")[1]
        t2Name = t2.split(") ")[1]

        team1 = Team.find(t1Name)
        team2 = Team.find(t2Name)

        newSeries = Series.new(conf, round, team1, team2)
        @@allSeries << newSeries
    end

    def self.getAll
        @@allSeries
    end

    def name
        puts "#{self.team1.name} vs #{self.team2.name}"
    end

    def name_extended
        puts "#{self.team1.name} vs #{self.team2.name} -- #{self.conf} #{self.round}"
    end

    def self.eastDisplay
        puts "-----East Round 1-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Eastern" && selected.round == "First Round")
                selected.name
            end
        end
        puts ""
        puts "-----Eastern Semifinals-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Eastern" && selected.round == "Second Round")
                selected.name
            end
        end
        puts ""
        puts "-----Eastern Conference Finals-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Eastern" && selected.round == "Conference Finals")
                selected.name
            end
        end
    end

    def self.westDisplay
        puts "-----West Round 1-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Western" && selected.round == "First Round")
                selected.name
            end
        end
        puts ""
        puts "-----Western Semifinals-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Western" && selected.round == "Second Round")
                selected.name
            end
        end
        puts ""
        puts "-----Western Conference Finals-----"
        @@allSeries.each do | selected |
            if (selected.conf == "Western" && selected.round == "Conference Finals")
                selected.name
            end
        end
    end

end
    