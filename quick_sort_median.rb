#!/usr/bin/env ruby

@num_comparisons = 0

def quick_sort(array)
  @num_comparisons += array.size - 1 
  if array.length <= 1
   return array
  end

  less = Array.new
  more = Array.new
  first = array[0]
  last = array[array.length - 1]
  middle = array[(array.length / 2).to_i]

  if first <= middle && middle <= last
    pivot = middle

  elsif first >= middle && middle >= last
    pivot = middle

  elsif first <= middle && first >= last
    pivot = first

  elsif first >= middle && first <= last
    pivot = first

  elsif last <= middle && last >= first
    pivot = last

  elsif last >= middle && last <= first
    pivot = last
  end

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
