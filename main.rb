require_relative "luhn.rb"

p Luhn.luhnify("7992739871")  

p Luhn.is_valid?("79927398710")
p Luhn.is_valid?("79927398711")
p Luhn.is_valid?("79927398712") 
p Luhn.is_valid?("79927398713")
p Luhn.is_valid?("79927398714") 
p Luhn.is_valid?("79927398715")
p Luhn.is_valid?("79927398716")
p Luhn.is_valid?("79927398717")
p Luhn.is_valid?("79927398718")
p Luhn.is_valid?("79927398719")

