#!/usr/bin/env ruby
require_relative "lib/pivot_deque"
@num_comparisons = 0
def quick_sort(read_array, pivot_point)
  puts "starting"
  @num_comparisons += read_array.size - 1
  if read_array.size == 1
    read_array
  end
  temp = Container::PivotDeque.new(0)
  temp.push_front(read_array[pivot_point])
  origin = 0
  read_array.each do |item|
    unless item == read_array[pivot_point]
      if item > read_array[pivot_point]
        temp.push_back(item)
      else
        temp.push_front(item)
        origin += 1
      end
    end
  end
  puts temp
end

def shift(sub_array)

end

@my_array = [3,2,4,1,5]
# ARGF.readlines.each do |item|
#   @my_array << item.to_i
# end

@my_array = quick_sort(@my_array,0)

puts @num_comparisons
