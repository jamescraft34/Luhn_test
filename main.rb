require_relative "luhn.rb"

p Luhn.luhnify("7992739871")  
p Luhn.is_valid?("79927398713")  
p Luhn.is_valid?("79927398714")  

