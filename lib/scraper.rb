require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

flatirons_header = doc.css("#header-content > div > h1").text

courses = doc.search('#\32 a778efd-1685-5ec6-9e5a-0843d6a88b7b > div > div.content-3OTK_R > div .title-oE5vT4').map {|title| title.text}
puts courses

