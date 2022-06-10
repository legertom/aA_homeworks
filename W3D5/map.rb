class Map
    def initialize
        @map = []

    end

    def set(key, value)
        @map << [key, value]
    end

    def get(key)
        @map.each do |arr|
            if arr[0] == key
                return arr
            end
        end

    end

    def delete(key)
        @map.each do |arr|
            if arr[0] == key
                array = arr
            end
        end
        @map - array
    end

    def show
        @map
    end


end