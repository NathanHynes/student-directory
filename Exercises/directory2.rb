def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp
  # While the name is not empty, repeat this code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name, cohort: :september}
    puts "Now we have #{students.count} students"
    # Get another name from the user
    name = gets.chomp
  end
  # Return the array of students
  students
end

def input_initial
  puts "Would you like to see students with a particular initial?"
  puts "If so enter initial below, if not enter ALL"
  initial = gets.chomp
  initial
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(students, initial)
  students.each_with_index do |student,index|
    if student[:name][0] == initial
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    elsif initial == "ALL"
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
initial = input_initial
#nothing happens until we call the methods
print_header
print(students, initial)
print_footer(students)
