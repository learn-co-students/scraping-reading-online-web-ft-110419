require 'nokogiri'
require 'open-uri'
 
# html = open("https://flatironschool.com/")
# doc = Nokogiri::HTML(html)
 
doc = Nokogiri::HTML(open("https://flatironschool.com/"))
# doc.css("#header-content > div > h1").text 
# puts doc


courses = doc.css("#header-content > div > h1")
 
courses.collect do |course|
  puts course.text.strip
end