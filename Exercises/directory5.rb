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

def add_student_info(students)
  puts "Now add the students hobbies, height and country of birth"
  students.each do |student|
    puts "What is #{student[:name]}'s hobbies?"
    hobbies = gets.chomp
    student[:hobbies] = hobbies
    puts "What is #{student[:name]}'s height?"
    height = gets.chomp
    student[:height] = height
    puts "What is #{student[:name]}'s country of birth?"
    birth = gets.chomp
    student[:birth] = birth
  end

end


def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(students)
  new_line = "\n"
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    puts "#{student[:name]}'s:" + new_line + "hobbies are #{student[:hobbies]}" + new_line + "height is #{student[:height]}" + new_line + "country of birth is #{student[:birth]}"
  end
end

def print_footer(students)
  puts "\nOverall, we have #{students.count} great students"
end

students = input_students
add_student_info(students)
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
