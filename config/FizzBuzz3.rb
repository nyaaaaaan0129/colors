def fizz_buzz(number)
  # ここにFizzBuzzプログラムの処理を書いてください
  if number % 15 == 0
  	puts "FizzBuzz"
  elsif number % 5 == 0
  	puts "Buzz"
  elsif number % 3 == 0
  	puts "Fizz"
  else
  	puts number
  end
  
end

puts "1 以上の数字を入力してください"

input = gets.to_i

puts '結果は、、、'

puts fizz_buzz(input)