@students = [] # An empty array accessible to all methods

# Method to append to @students array

def push_students(name, cohort = :september)
  @students << {name: name, cohort: cohort}
end


# Interactive Menu

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "5. Exit" # 9 because we'll be adding more items
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

# User input

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "5"
    puts "\nProgram will now close"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you mean, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Get the first name
  name = STDIN.gets.chomp
  # While the name is not empty, repeat this code
  while !name.empty? do
    # Add the student hash to the array
    push_students(name)
    puts "Now we have #{@students.count} students"
    # Get another name from the user
    name = STDIN.gets.chomp
  end
  puts "\nStudents entered successfully\n\n"
end

# Show students

def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

# Save student list

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "\nfile saved successfully\n\n"
end

# Load previous student list

def load_students(filename)
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    push_students(name, cohort.to_sym)
  end
  file.close
  puts "\nfile loaded successfully\n\n"
end

def load_students_on_startup
  filename = ARGV.first # first argument from the command csv_line
  filename = "students.csv" if filename.nil?
  if File.exists?(filename) # if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exists
    puts "Sorry, #{filename} doesn't exist."
    exit #quit the program
  end
end

#run program

load_students_on_startup
interactive_menu
