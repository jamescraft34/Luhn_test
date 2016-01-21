#a crack at the Luhn algorithm
class Luhn
  class << self

    #check if an id has a valid check digit (passes the Luhn test...)
    def is_valid?(id)
      begin
        check_digit = id.slice!(-1)
        check_digit.to_i == create_check_digit( sum_of_all_digits(id) )
      rescue
        "Hans hates you!"    
      end
    end
    
    #create an Luhn identification number from a non-luhn id
    def luhnify(id)
      begin
        normalized_id = normalize_id(id)          
        check_digit = create_check_digit( sum_of_all_digits(normalized_id) )

        "#{normalized_id}#{check_digit}" 
      rescue
        "Hans hates you!"
      end
    end

    private

    #calulate Luhn sum of digits
    def sum_of_all_digits(id)
      #it's long but was fun to write this line... would prob not torture anyone with this :)      
      (id.split("").reverse_each.each.map.with_index(1) { |item, index| index.odd? ?  sum_of_number_digits(item.to_i * 2) : item.to_i }).inject(:+)
    end
    
    #normalize incoming id's by removing any non numeric values...
    def normalize_id(id)
      id.gsub(/[^0-9]/, "")
    end

    def create_check_digit(n)
      (n * 9) % 10
    end
 
    #recursively get the sum of the individual digits of a number
    def sum_of_number_digits(n)      
      if n == 0
        return 0
      else
        return (n % 10) + sum_of_number_digits(n / 10)
      end
    end
    
  end  
end
