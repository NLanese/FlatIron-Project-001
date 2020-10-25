# FlatIron-Project-001

* MIT LICENSE * https://opensource.org/licenses/MIT *

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

This is for the Command Line Interface Portfolio Project from the Flatiron Coding Bootcamp. The goal of this project is to extrapolate information about the 2020 NBA Playoffs from the internet
The executable file of this will be located inside of the bin/ folder, and three classes will be saved inside of the lib/ folder. These three classes are needed for the application to properly work. The files containing the classes, scraper.rb, team.rb, and series.rb. The Scraper class is responsible for extracting the HTML file from the 2020 NBA Playoffs Wikipage. Based off of this information, it will extract specific information that would then be grouped together as Team objects. Finally, two Team objects can be grouped together and categorized which form Series objects. The executable file, bin/playoff-game-loader.rb uses these two classes to display information in a user-friendly menu. 

Imports the nokogiri, open-uri and pry gems. 
