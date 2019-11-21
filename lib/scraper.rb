require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
change_things = doc.css(".headline-26OIBN").text

text_about_courses = doc.css(".text-4GLMvr .title-oE5vT4")

course_names = text_about_courses.slice(0..3)

course_names.each_with_index do |course, index|
  puts "#{index+1}. #{course.text}" 
  end 

