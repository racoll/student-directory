def print(students)
  if student.length < 12? true
  students.each_with_index do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  else
    false
  end
end
