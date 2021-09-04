# frozen_string_literal: true

def fibs(num)
  fibonacci = [0, 1]
  while fibonacci.size < num
    fibonacci << (fibonacci[-1] + fibonacci[-2])
  end

  num == 1 ? fibonacci.first.digits : fibonacci
end

def fibs_rec(num)
  # https://stackoverflow.com/a/36415667
  return [0] if num < 2
  return [0, 1] if num < 3

  memo = fibs_rec(num - 1)
  memo.push(memo[num - 2] + memo[num - 3])
end


puts "Iterative Fibonacci"
puts "Term --> Fibonacci numbers"
(1..10).each do |term|
  puts "#{term.to_s.rjust(2)} #{'-->'.center(7)} #{fibs(term)}"
end
puts ""

puts "Recursive Fibonacci"
puts "Term --> Fibonacci numbers"
(1..10).each do |term|
  puts "#{term.to_s.rjust(2)} #{'-->'.center(7)} #{fibs_rec(term)}"
end
