<<<<<<< HEAD
Dir.mkdir("Sample-Dir")
=======
require 'date'

# Generate a year's worth of random temperature data
def generate_temperature_data
  (1..365).map { rand(15..35) }
end

# Calculate the average temperature for the year
def average_temperature(temps)
  temps.sum / temps.size.to_f
end

# Find the hottest and coldest days of the year
def temperature_extremes(temps)
  hottest_day = temps.index(temps.max) + 1
  coldest_day = temps.index(temps.min) + 1
  [temps.max, hottest_day, temps.min, coldest_day]
end

# Calculate the average temperature for each month
def monthly_average(temps)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  month_starts = days_in_month.each_with_index.map { |days, i| days_in_month[0...i].sum }
  averages = []

  month_starts.each_with_index do |start_day, i|
    month_temps = temps[start_day, days_in_month[i]]
    averages << month_temps.sum / month_temps.size.to_f
  end

  averages
end

# Find the length of the longest heat wave
def longest_heat_wave(temps)
  max_length = 0
  current_length = 0

  temps.each do |temp|
    if temp > 30
      current_length += 1
      max_length = [max_length, current_length].max
    else
      current_length = 0
    end
  end

  max_length
end

# Find the length of the longest cold spell
def longest_cold_spell(temps)
  max_length = 0
  current_length = 0

  temps.each do |temp|
    if temp < 20
      current_length += 1
      max_length = [max_length, current_length].max
    else
      current_length = 0
    end
  end

  max_length
end

# Find the month with the highest average temperature
def hottest_month(temps)
  month_avgs = monthly_average(temps)
  hottest_month_index = month_avgs.index(month_avgs.max)
  hottest_month_index + 1 # months are 1-indexed
end

# Main Execution
temps = generate_temperature_data

puts "Average Temperature for the Year: #{average_temperature(temps).round(2)}°C"

hottest_temp, hottest_day, coldest_temp, coldest_day = temperature_extremes(temps)
puts "Hottest Temperature: #{hottest_temp}°C on Day #{hottest_day}"
puts "Coldest Temperature: #{coldest_temp}°C on Day #{coldest_day}"

monthly_avgs = monthly_average(temps)
puts "Monthly Averages: #{monthly_avgs.map { |avg| avg.round() }.join(', ')}"

puts "Longest Heat Wave Length: #{longest_heat_wave(temps)} days"
puts "Longest Cold Spell Length: #{longest_cold_spell(temps)} days"
puts "Hottest Month: #{hottest_month(temps)}"
>>>>>>> 5fd0631123001f363869f96bfb50eedbddbffc28
