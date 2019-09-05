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

=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :september},
  {name: "Darth Vader", cohort: :september},
  {name: "Nurse Ratched", cohort: :september},
  {name: "Michael Corleone", cohort: :september},
  {name: "Alex DeLarge", cohort: :september},
  {name: "The Wicked Witch of the West", cohort: :september},
  {name: "Terminator", cohort: :september},
  {name: "Freddy Krueger", cohort: :september},
  {name: "The Joker", cohort: :september},
  {name: "Joffrey Baratheon", cohort: :september},
  {name: "Norman Bates", cohort: :september}
]
=end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
