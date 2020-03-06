require 'rubygems'
require 'nokogiri'   
require 'open-uri'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/indre.html")) 
page2 = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/indre-2.html"))

