#Make a booking system that can take a number of cats and a number of days and return a final price


#Welcome Message

puts "Welcome to Meowingtons Hotel!"
#Main App Loop (start_option)
loop do
puts "Please choose what you would like to do. \n (B)ook a holiday for you cat/s \n (V)iew a previous booking \n (Q)uit."
    start_option = gets.strip.downcase

    case start_option
    when "b"
        loop do
            puts "How many cats would you like to book? \n(Please note we can only take up to 3 per room.)"
            number_cats = gets.strip.to_i
            if number_cats > 3 
                puts "\n"
                puts "Sorry we can only take up to 3 cats per room."
                puts "\n"
            else 
                puts "\n"
                puts "You have chosen #{number_cats} cat/s"
                puts "\n"
                break
            end
        end
         puts "How many days would you like to book?"
         days = gets.chomp.to_i
         puts "\n"
         puts "You have chosen #{days} day/s"
         puts "\n"
        #  puts price.final_price
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
        @number_cats = number_cats
        @days = days
    end
    def get_price(price)
        return @price * @days * @number_cats
    end
end

class Price
    attr_accessor  :price
    def initilize(price)
        @price = price
    end

    def final_price
        return @price * @days * @number_cats
    end
end 

meowington = Booking.new("Meowington", { "1" => 10.00, "2" => 18.00, "3" => 25.00})