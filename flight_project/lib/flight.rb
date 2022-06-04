require_relative "passenger.rb"


class Flight

    def initialize(flight_number,capacity)
        @passengers = []

        @flight_number = flight_number
        @capacity = capacity
    end

    def passengers
        return @passengers
    end

    def full?
        if @passengers.length >= @capacity #write out all conditionals
            return true
        else return false
        end
    end

    def board_passenger(passenger_1)
        if !full?
            if passenger_1.has_flight?(@flight_number) #make sure you use provide all args
                @passengers << passenger_1
            end
        end
    end

    def list_passengers
        return @passengers.map {|passenger| passenger.name}
    end

    def [](index)
        return @passengers[index]
    end

    def <<(passenger_1)
        self.board_passenger(passenger_1)
    end





end