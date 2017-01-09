puts 'What year were you born in?'
year = gets.chomp
puts 'What month were you born in? Please indicate using 1, 2, ... 12.'
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

time2 = Time.gm(year, month, day)
age_seconds = Time.new - time2
age_years = (age_seconds/60/60/24/365).to_i

puts "You are #{age_years} years old!"
puts "SPANK! 
" * age_years
