now = Array.new
soon = Array.new
later = Array.new
addentry = true

while addentry == true
  puts "Please select a time frame: "
  puts "1. Now"
  puts "2. Soon"
  puts "3. Later"

  choice = gets.chomp.to_i()

  if choice == 1
    puts "Please enter a task for Now: "
    now[0] = gets.to_s
  elsif choice == 2
    puts "Please enter a task for Soon: "
    soon[0] = gets.to_s
  elsif choice == 3
    puts "Please enter a task for Later: "
    later[0] = gets.to_s
  else
    puts "Invalid Entry. Please try again."
  end

  puts "Add another entry? (Y/N)"
  addentry = gets.to_s
  if addentry == "Y" or addentry == "y"
    addentry == true
  elsif addentry == "N" or addentry == "n"
    addentry == false
  end
end

puts "Would you like to view your tasks? (Y/N)"
answer = gets.chomp.to_s

if answer == "Y" or answer == "y"
  print "Now Tasks: "
  puts now
else
  puts "Thank You."
end
