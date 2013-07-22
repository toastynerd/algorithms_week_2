#!/usr/bin/env ruby

@num_comparisons = 0

def quick_sort(array)
  @num_comparisons += array.length - 1 
  if array.length <= 1
   return array
  end

  less = Array.new
  more = Array.new
  pivot = array[0]
  array.each do |item|
    if item < pivot
      less << item
    elsif item > pivot
      more << item
    end
  end
  return quick_sort(less) << pivot << quick_sort(more)
end

@my_array = []
ARGF.readlines.each do |item|
  @my_array << item.to_i
end
  
@my_array = quick_sort(@my_array)
puts @my_array
puts ""
puts @num_comparisons
