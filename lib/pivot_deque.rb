module Container
  class PivotDeque
    def initialize pivot_location, pivot_value
      @pivot_value = pivot_value
      @pivot_location = 0
      @my_array = []
      @my_array[0] = pivot_value
    end

    def push_front value
      @my_array.unshift(value)
      @pivot_location += 1
    end

    def push_back value
      @my_array.push(value)
    end

    def puts
      puts @my_array
    end

    def [](x)
      @my_array[x]
    end

    def []=(x, value)
      @my_array[x] = value
    end

    def pivot_index
      @pivot_location
    end

    def pivot_value
      @pivot_value
    end

    def bottom_array
      @my_array[0..(@pivot_location)]
    end

    def top_array
      @my_array[(@pivot_location + 1)..@my_array.size]
    end
  end
end
