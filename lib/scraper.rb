require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
changes = doc.css(".headline-26OIBN").text

courses = doc.css(".text-4GLMvr .title-oE5vT4")
