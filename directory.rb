#let's put all students into an array
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

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
