require 'pry'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-260IBN")
binding.pry
