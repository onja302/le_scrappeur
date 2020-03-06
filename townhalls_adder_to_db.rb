class Adder 
    def adder_to_db(mail) 
        File.open("../db/mail.json","w") {|f| f.write(@@hash1.to_json)}
    end
end