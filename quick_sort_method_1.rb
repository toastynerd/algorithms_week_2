#!/usr/bin/env ruby

require_relative "lib/pivot_deque"

@num_comparisons = 0

def quick_sort(read_array)
  @num_comparisons += read_array.size - 1
  if read_array.size <= 1
    return read_array
  else
    temp =  Container::PivotDeque.new(0, read_array[0])
    read_array.each do |item|
      if item > temp.pivot_value()
        temp.push_back(item)
      elsif item < temp.pivot_value()
        temp.push_front(item)
      else
        # do nothing if it's the pivot
      end
    end

    quick_sort(temp.bottom_array())
    quick_sort(temp.top_array())
    total = temp.bottom_array + temp.top_array()
    return total 
  end
end

@my_array = [9,6,7,8,5,4,3]
# ARGF.readlines.each do |item|
#   @my_array << item.to_i
# end

@my_array = quick_sort(@my_array)
puts @my_array
puts ""

puts @num_comparisons
