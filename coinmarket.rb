require 'rubygems'
require 'nokogiri'

array = []

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #pour acceder a la page scrapperna

symbol = page.xpath("//*[@id="__next"]/div/div[2]/div[1]/div[2]/div[2]/div[2]/div[3]/div/table/tbody/tr/td[3]/div").map{ |s| s.text} #selectionner anle zavt ho alaina
price = page.xpath("//*[@id="__next"]/div/div[2]/div[1]/div[2]/div[2]/div[2]/div[3]/div/table/tbody/tr/td[5]/a").map{ |s| s.text}

hash = Hash[symbol.zip(price)] #hash 2 atambatra 1
hash.each{ |symbol,price| array << {"#{symbol}" => "#{price}"}} #alaina tsirairai le hash atao anat tbleau
 puts array



