def print(students)
  students.each_with_index do |student, index|
    indexplusone = index + 1
    puts "#{indexplusone}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
