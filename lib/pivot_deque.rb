module Container
  class PivotDeque
    def initialize pivot_value
      @pivot = pivot_value
      @pivot_location = 0
      @my_array = []
    end

    def push_front value
      @my_array.push(value)
      @pivot_location += 1
    end

    def push_back value
      @my_array[@my_array.size + 1] = value
    end

    def puts
      puts @my_array
    end
  end
end
