require 'pry'
require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
list_link_text = doc.css("li > a")
list_link_text.each { |t| puts t.text }
