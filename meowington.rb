#Make a booking system that can take a number of cats and a number of days and return a final price


#Welcome Message

puts "Welcome to Meowingtons Hotel!"
#Main App Loop (start_option)
loop do
puts "Please choose what you would like to do. \n (B)ook a holiday for you cat/s \n (V)iew a previous booking \n (Q)uit."
    start_option = gets.strip.downcase

    case start_option
    when "b"
         puts "How many cats would you like to book?"
         number_cats = gets.strip.to_i
         puts "How many days would you like to book?"
         days = gets.chomp.to_i
         puts "You have chosen #{number_cats} cat/s for #{days} day/s"
         puts price.final_price

    when "v"
         #implement view
    when "q"
        break
    else 
        puts "Please Choose a valid option."
    end
end

class Booking
    attr_accessor :days, :number_cats
    def initilize
        @number_of_cats = number_cats
        @days = days
    end
    def get_price(name)
    end
end

class Price
    attr_accessor :name, price
    def initilize(name,price)
        @price = price
        @name = name
    end

    # def final_price
    #     return @price * @days * @number_cats
    # end
end 