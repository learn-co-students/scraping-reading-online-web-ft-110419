require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
bingo = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

binding.pry

puts "done"