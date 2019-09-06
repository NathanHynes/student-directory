def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Create an empty array
  students = []
  # Get the first name
  name = gets.strip
  # While the name is not empty, repeat this code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name, cohort: :september}
    puts "Now we have #{students.count} students"
    # Get another name from the user
    name = gets.strip
  end
  # Return the array of students
  students
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student,index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  students.count == 0 ? (puts "We currently have no students enrolled at Villains Academy") : (puts "Overall, we have #{students.count} great students")
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
