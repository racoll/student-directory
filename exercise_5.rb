def input_students
  students = [] #empty array
  puts "Please enter a student name. Hit enter twice to exit"
  name = gets.strip #Get user input and remove leading and trailing whitespaces
  name = name.split(" ").map{|x| x.capitalize}.join(" ") # capitalize first letter of each word e.g. aaron smith => Aaron Smith
  until name.empty? do #repeat code while name is not empty
    puts "Please enter their hobbies"
    hobbies =gets.strip
    puts "Please enter their Country of Birth"
    country_of_birth = gets.strip
    puts "Please enter their height in cm"
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


def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), #{student[:hobbies]}, #{student[:country_of_birth]}, #{student[:height]}cm"
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
