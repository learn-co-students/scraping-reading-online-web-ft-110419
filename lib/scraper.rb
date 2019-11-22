require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
# puts doc.css('#header-content > div > h1').text.strip
list_link_text = doc.css("li > a")
list_link_text.each { |t| puts t.text }