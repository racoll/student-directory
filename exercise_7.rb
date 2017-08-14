def input_students
  puts "Please enter the names of the students, then hit return."
  puts "Next, enter the cohort, followed by return."
  puts "To finish, just hit the return twice."
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # create an empty additional array
  cohort = []
  # get the cohort
  cohort = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
  end
  while cohort.empty? do # this creates an infinite loop after 2x return!!
    puts "Please enter a cohort..."
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
