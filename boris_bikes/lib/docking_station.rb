class DockingStation
attr_reader :bike

    def initialize
        @bikes = []
    end
    
    def release_bike
        Bike.new
    end

    def dock(x)
        @bikes << x
    end 

    def has_bikes?
        @bikes.count > 0
    end
end