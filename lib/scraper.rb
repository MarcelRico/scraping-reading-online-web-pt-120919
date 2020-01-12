require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

flatiron_courses = []

flatiron_course_list = doc.css("section#2a778efd-1685-5ec6-9e5a-0843d6a88b7b div.title-oE5vT4")
flatiron_course_list.each{|course| flatiron_courses << course.text.strip}


p flatiron_course_list[0].attributes


