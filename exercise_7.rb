 def input_students
  students = [] #empty array
  puts "Please enter a student name. Hit enter twice to exit"
  name = gets.strip #Get user input and remove leading and trailing whitespaces
  name = name.split(" ").map{|x| x.capitalize}.join(" ") # capitalize first letter of each word e.g. aaron smith => Aaron Smith
  until name.empty? do #repeat code while name is not empty
    puts "Please enter their cohort"
    cohort =gets.strip
      # if cohort.empty? do
      # students << {:cohort => :November}
      # else
    students << {:name => name, :cohort => cohort} #add ended of array
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
