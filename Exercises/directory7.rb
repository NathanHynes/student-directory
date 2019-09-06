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
    students << {name: name,}
    puts "Now we have #{students.count} students"
    # Get another name from the user
    name = gets.chomp
  end
  # Return the array of students
  students
end

def add_student_cohort(students)
  months = ['january', 'february', 'march', 'april', 'june', 'july',
    'august', 'september', 'november', 'december']
  puts "Now add the student to their chosen cohort"
  students.each do |student|
    puts "what cohort would #{student[:name]} like to join?"
    cohort = gets.chomp

    until months.include?(cohort) || cohort.empty?
      puts "That cohort doesn't exist, try again"
      cohort = gets.chomp
    end

    if months.include?(cohort)
      student[:cohort] = cohort.to_sym
    elsif cohort.empty?
      cohort = "september"
      student[:cohort] = cohort.to_sym
    end
  end
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
  puts "Overall, we have #{students.count} great students"
end

students = input_students
add_student_cohort(students)
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
