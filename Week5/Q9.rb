require 'csv'

CSV.foreach("sample.csv", headers: true) do |row|
  if row["ID"] == "1"
    puts "Row 1: #{row["Name"]}, #{row["Age"]}, #{row["City"]}"
  end

  puts "Name: #{row['Name']}, Age: #{row['Age']}"
end
