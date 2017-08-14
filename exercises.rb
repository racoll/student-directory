#1 We're using the each() method to iterate over an array
#of students. How can you modify the program to print a
#number before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
#Hint: look into each_with_index()

# def print(students)
#   students.each_wth_index {|student, index|}
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

students = ["x", "y", "z"]
students.each_with_index{|student, index|}
puts "#{student[:name]} (#{student[:cohort]} cohort)"



def print(students)
  if student.length < 12? true
  students.each_with_index do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  else
    false
  end
end
