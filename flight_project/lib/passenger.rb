class Passenger
    attr_reader :name


    def initialize(name)
        @flight_numbers = []
        @name = name
    end

    def has_flight?(string)
        capitalFlight = ""

        string.each_char do |char|
            if char == char.downcase
                capitalFlight += char.upcase
            else capitalFlight += char
            end
        end

        if @flight_numbers.include?(capitalFlight)
            return true
        else return false
        end
    end

    def add_flight(string)
        if !self.has_flight?(string)
            capitalFlight = ""
            string.each_char do |char|
                if char == char.downcase
                    capitalFlight += char.upcase
                else capitalFlight += char
                end
            end
            @flight_numbers << capitalFlight
        end
    end


end