def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit the return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

# def print(students)
#   students.each_with_index do |student, index|
#     puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

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



students = [] #empty array
 puts "Please enter a student name. Hit enter twice to exit"
 name = gets.strip #Get user input and remove leading and trailing whitespaces
 name = name.split(" ").map{|x| x.capitalize}.join(" ") # capitalize first letter of each word e.g. aaron smith => Aaron Smith
 until name.empty? do #repeat code while name is not empty
   puts "Please enter your hobbies"
   hobbies =gets.strip
   puts "Please enter Country of Birth"
   country_of_birth = gets.strip
   puts "Please enter your height in cm"
   height =gets.strip.to_i
   students << {:name => name, :cohort => :november, :hobbies => hobbies ,:country_of_birth => country_of_birth, :height => height} #add ended of array
   msg = "Now we have #{students.count} student"
   msg << "s" if students.count > 1
   puts msg,""
   puts "Please enter another student name. Hit enter twice to exit"
   name = gets.strip #ask user for another, also need to prevent infinite loop
 end
 return students # return array
end
