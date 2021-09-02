# frozen_string_literal: true

def fibs(num)
  fibonacci = [0, 1]
  while fibonacci.size < num
    fibonacci << (fibonacci[-1] + fibonacci[-2])
  end

  num == 1 ? fibonacci.first.digits : fibonacci
end

puts "digit --> fibonacci numbers"
(1..10).each do |digit|
  puts "#{digit} --> #{fibs(digit)}"
end
