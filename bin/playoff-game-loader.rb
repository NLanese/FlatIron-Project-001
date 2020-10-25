require 'pry'
require_relative '../lib/scraper.rb' 
require_relative '../lib/team.rb'

mainScrape = Scraper.new()
mainScrape.get_teams
mainScrape.get_east_series
mainScrape.get_west_series

def intro 
    puts "Welcome ton the NBA 2020 Playoff \nStat Checker! Enter the number that\nyou would like to see!"
    puts "1. Eastern Conference Records"
    puts "2. Western Conference Records"
    puts "3. Playoffs Series Information"
    puts "4. Finals Information"
    puts "5. Exit"
    puts " "
end 

def handle
    # gets the user input
    firstInput = gets.strip

    # if the user wants to access the Eastern Conference Records !!DONE!!
    if firstInput == "1"
        puts "----------------------------"
        puts "Eastern Conference Records: "
        puts Team.getEastRanked
        puts "----------------------------"
        puts "Type anything in to go back to the main screen"
        pass = gets.strip
        return 1
    
    # if the user wants to access the Western Conference Records !!DONE!!
    elsif firstInput == "2"
        puts "----------------------------"
        puts "Western Conference Records: "
        puts Team.getWestRanked
        puts "----------------------------"
        puts "Type anything in to go back to the main screen"
        pass = gets.strip
        return 2

    # if the user wants to access the series of the playoffs     !!IN PROGRESS!!
    elsif firstInput == "3"
        puts "----------------------------"
        puts "1. East"
        Series.eastDisplay
        puts ""
        puts "2. West"
        Series.westDisplay
        puts ""
        puts "Enter 1 or 2 to gain access to either conference's information"
        secondInput = gets.strip
        puts ""
        puts ""
        puts ""
        # Eastern Conference Information
        if (secondInput == "1")
            i = 1
            Series.getAll.each do | selected |
                if selected.conf == "Eastern"
                    puts "#{i}. #{selected.name_extended}"
                    i += 1
                    puts ""
                end
            end
            puts "Enter the number that corresponds with what series you want to learn more about"
            thirdInput = gets.strip
            if thirdInput == "1"
                puts "Milwaukee wins in 5"
                puts "Game 1: Orlando 122 Milwaukee 110"
                puts "Game 2: Milwaukee 111 Orlando 96"
                puts "Game 3: Milwaukee 121 Orlando 107"
                puts "Game 4: Milwaukee 121 Orlando 106"
                puts "Game 5: Milwaukee 118 Orlando 104"
            elsif thirdInput == "2"
                puts "Toronto wins in 4"
                puts "Game 1: Toronto 134 Brooklyn 110"
                puts "Game 2: Toronto 104 Brooklyn 99"
                puts "Game 3: Toronto 117 Brooklyn 92"
                puts "Game 4: Toronto 150 Brooklyn 122"
            elsif thirdInput == "3"
                puts "Boston wins in 4"
                puts "Game 1: Boston 109 Philadelphia 101"
                puts "Game 2: Boston 128 Philadelphia 101"
                puts "Game 3: Boston 102 Philadelphia 94"
                puts "Game 4: Boston 110 Philadelphia 106"
            elsif thirdInput == "4"
                puts "Miami wins in 4"
                puts "Game 1: Miami 113 Indiana 101"
                puts "Game 2: Miami 109 Indiana 100"
                puts "Game 3: Miami 124 Indiana 115"
                puts "Game 1: Miami 99 Indiana 87"
            elsif thirdInput == "5"
                puts "Miami wins in 5"
                puts "Game 1: Miami 115 Milwaukee 104" 
                puts "Game 2: Miami 116 Milwaukee 114" 
                puts "Game 3: Miami 115 Milwaukee 100" 
                puts "Game 4: Milwaukee 118 Miami 115" 
                puts "Game 5: Miami 103 Milwaukee 94" 
            elsif thirdInput == "6"
                puts "Boston wins in 7"
                puts "Game 1: Boston 112 Toronto 94"
                puts "Game 2: Boston 102 Toronto 99"
                puts "Game 3: Toronto 104 Boston 103"
                puts "Game 4: Toronto 100 Boston 93"
                puts "Game 5: Boston 111 Toronto 89"
                puts "Game 6: Toronto 125 Boston 122"
                puts "Game 7: Boston 92 Toronto 87"
            elsif thirdInput == "7"
                puts "Miami wins in 6"
                puts "Game 1 Miami 117 Boston 114"
                puts "Game 2: Miami 106 Boston 101"
                puts "Game 3: Boston 117 Miami 106"
                puts "Game 4: Miami 112 Boston 109"
                puts "Game 5: Boston 121 Miami 108"
                puts "Game 6: Miami 125 Boston 113"
            else
                puts "Invalid Input"
            end

        # Western Conference Information
        elsif (secondInput == "2")
            i = 1
            Series.getAll.each do | selected |
                if selected.conf == "Western"
                    puts "#{i}"
                    puts "#{selected.name_extended}"
                    i += 1
                    puts ""
                end
            end
            puts "Enter the number that corresponds with what series you want to learn more about"
            thirdInput = gets.strip
            if thirdInput == "1"
                puts "Los Angeles wins in 5"
                puts "Game 1: Portland 100 Los Angeles 93"
                puts "Game 2: Los Angeles 111 Portland 88"
                puts "Game 3: Los Angeles 116 Portland 108"
                puts "Game 4: Los Angeles 135 Portland 115"
                puts "Game 5: Los Angeles 131 Portland 122"
            elsif thirdInput == "2"
                puts "Los Angeles wins in 6"
                puts "Game 1: Los Angeles 118 Dallas 110"
                puts "Game 2: Dallas 127 Los Angeles 114"
                puts "Game 3: Los Angeles 130 Dallas 122"
                puts "Game 4: Dallas 135 Los Angeles 133"
                puts "Game 5: Los Angeles 154 Dallas 111"
                puts "Game 6: Los Angeles 111 Dallas 97"
            elsif thirdInput == "3"
                puts "Denver wins in 7"
                puts "Game 1: Denver 135 Utah 125"
                puts "Game 2: Utah 124 Denver 105"
                puts "Game 3: Utah 124 Denver 87"
                puts "Game 4: Utah 129 Denver 127"
                puts "Game 5: Denver 117 Utah 107"
                puts "Game 6: Denver 119 Utah 107"
                puts "Game 7: Denver 80 Utah 78"
            elsif thirdInput == "4"
                puts "Houston wins in 7"
                puts "Game 1: Houston 123 Oklahoma 108"
                puts "Game 2: Houston 111 Oklahoma 98"
                puts "Game 3: Oklahoma 119 Houston 107"
                puts "Game 4: Oklahoma 117 Houston 114"
                puts "Game 5: Houston 114 Oklahoma 80"
                puts "Game 6: Oklahoma 104 Houston 100"
                puts "Game 7: Houston 104 Oklahoma 102"
            elsif thirdInput == "5"
                puts "Los Angeles wins in 5"
                puts "Game 1: Houston 112 Los Angeles 97"
                puts "Game 2: Los Angeles 117 Houston 109"
                puts "Game 3: Los Angeles 112 Houston 102"
                puts "Game 4: Los Angeles 110 Houston 100"
                puts "Game 2: Los Angeles 119 Houston 96"
            elsif thirdInput == "6"
                puts "Denver wins in 7"
                puts "Game 1: Los Angeles 120 Denver 97"
                puts "Game 2: Denver 110 Los Angeles 101"
                puts "Game 3: Los Angeles 113 Denver 107"
                puts "Game 4: Los Angeles 96 Denver 85"
                puts "Game 5: Denver 111 Los Angeles 105"
                puts "Game 6: Denver 111 Los Angeles 98"
                puts "Game 7: Denver 104 Los Angeles 89"
            elsif thirdInput == "7"
                puts "Los Angeles wins in 5"
                puts "Game 1: Los Angeles 126 Denver 114"
                puts "Game 2: Los Angeles 105 Denver 103"
                puts "Game 3: Denver 114 Los Angeles 106"
                puts "Game 4: Los Angeles 114 Denver 108"
                puts "Game 5: Los Angeles 117 Denver 107"
            else
                puts "Invalid Input!"
            end                
        end
        puts "Type in anything to go back to the main screen"
        pass = gets.strip

    # Finals information
    elsif firstInput == "4"
        puts "The Los Angeles Lakers defeated the Miami Heat in 6 games to win the 2020 NBA Title"
        puts "Game 1: Los Angeles 116 Miami 98"
        puts "Game 2: Los Angeles 124 Miami 114"
        puts "Game 3: Miami 115 Los Angeles 104"
        puts "Game 4: Los Angeles 102 Miami 96"
        puts "Game 5: Miami 111 Los Angeles 108"
        puts "Game 6 Los Angeles 106 Miami 93"
        puts "Finals MVP: LeBron James"
        puts ""
        puts "Type in anything to go back to the main screen"
        pass = gets.strip
    # Exit the application
    elsif firstInput == "5"
        return 5
    else
        puts "Invalid Input! Please try again"
        return 100
    end
end


ender = 0
while (ender != 5)
    intro
    ender = handle
    puts ""
end


