# frozen_string_literal: true

def merge_sort(ary)
  return ary if ary.length == 1

  halfway = (ary.length / 2) - 1
  left = ary[0..halfway]
  right = ary[(halfway + 1)..-1]

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(a, b)
  temp_ary = []

  until a.empty? || b.empty?
    if a.first > b.first
      temp_ary << b.first
      b.shift
    else
      temp_ary << a.first
      a.shift
    end
  end

  merge_a(a, temp_ary)
  merge_b(b, temp_ary)

  temp_ary
end

def merge_a(a, temp_ary)
  until a.empty?
    temp_ary << a.first
    a.shift
  end
  temp_ary
end

def merge_b(b, temp_ary)
  until b.empty?
    temp_ary << b.first
    b.shift
  end
  temp_ary
end

test_array1 = (1..9).to_a.shuffle
puts "Merge sort testing"
puts "test array: #{test_array1}"
puts "expect: #{test_array1.sort}"
puts "actual: #{merge_sort(test_array1)}"
