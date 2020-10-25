# FlatIron-Project-001

* MIT LICENSE * https://opensource.org/licenses/MIT *

This is for the Command Line Interface Portfolio Project from the Flatiron Coding Bootcamp. The goal of this project is to extrapolate information about the 2020 NBA Playoffs from the internet
The executable file of this will be located inside of the bin/ folder, and three classes will be saved inside of the lib/ folder. These three classes are needed for the application to properly work. The files containing the classes, scraper.rb, team.rb, and series.rb. The Scraper class is responsible for extracting the HTML file from the 2020 NBA Playoffs Wikipage. Based off of this information, it will extract specific information that would then be grouped together as Team objects. Finally, two Team objects can be grouped together and categorized which form Series objects. The executable file, bin/playoff-game-loader.rb uses these two classes to display information in a user-friendly menu. 

Imports the nokogiri, open-uri and pry gems. 
