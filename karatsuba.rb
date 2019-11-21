# frozen_string_literal: true

def karatsuba(num1, num2)
  num1_mid_point = (num1.length / 2)
  num2_mid_point = (num2.length / 2)
  a = num1[0..num1_mid_point - 1].to_i
  b = num1[num1_mid_point..].to_i
  c = num2[0..num2_mid_point - 1].to_i
  d = num2[num2_mid_point..].to_i

  # step 1
  a_c = a * c

  # step 2
  b_d = b * d

  # step 3
  sub_product = (a + b) * (c + d)

  # step 4
  sub_product2 = sub_product - b_d - a_c

  (a_c * (10**num1.length)) + b_d + (sub_product2 * (10**num1_mid_point))
end

puts "Enter num1"
num1 = gets.chomp

puts "Enter num2"
num2 = gets.chomp

result = karatsuba(num1, num2)
puts result

puts "Answer was #{result.to_i == num1.to_i * num2.to_i}"
