require 'pry'
require_relative 'scraper.rb'

class Team

    @@allTeams = []
    attr_accessor :name, :rank, :conf, :record

    def initialize()
    end

# allows the scraper to create a class with all of the inputs it finds off of the HTML doc !!DONE!!
    def self.create(name, rank, conf, record)
        newTeam = Team.new()
        newTeam.name = name
        newTeam.rank = rank
        newTeam.conf = conf
        newTeam.record = record
        if !(@@allTeams.include?(self))
            @@allTeams << newTeam
        end
        return newTeam
    end

# should only be run after scraper.get_teams, otherwise there will be no teams to return !!DONE!!
    def self.getAll
        return @@allTeams
    end

# allows Team to find a specific team by entering its name !!DONE!!
    def self.find(name)
        @@allTeams.each do | team |
            if name.include?(team.name)
                return team
            end
        end
    end    


# gets only the Eastern team names, in order of seeding !!DONE!!
    def self.getEastRanked
        rArray = []
        i = 1
        self.getAll.each do | team |
            if team.conf == "Eastern"
                rArray << "#{i}. #{team.name} #{team.record}"
                i = i + 1
                if (i == 9)
                    return rArray
                end
            end
        end
        return rArray
    end

# gets only the Western team names, in order of seeding !!DONE!!
    def self.getWestRanked
        rArray = []
        i = 1
        self.getAll.each do | team |
            if team.conf == "Western"
                rArray << "#{i}. #{team.name} #{team.record}"
                i = i + 1
                if (i == 9)
                    return rArray
                end
            end
        end
        return rArray
    end

end