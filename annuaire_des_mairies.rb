require 'rubygems'
require 'nokogiri'

array = []

page  = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

url = page.css("a[class = "lientxt"]").map{ |u| "http://annuaire-des-mairies.com/"+ u["href"].gsub("./", "")}

url.each{ |u| 
        ville = page.css("h1").map{|e| e.text}
        email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").map{|e| e.text}
        hash = Hash[ville.zip(email)]
        hash.each{ |ville,email| array << {"#{ville}" => "#{email}"}}
}

puts array