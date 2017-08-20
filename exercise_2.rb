def print(students)
  if # student's name begins with '' letter...
    # run this code
  else
    # don't run the code
  end

  students.each do |student|
    students.select { |str| str.start_with?("d") }
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end



def select_elements_starting_with(students, letter)
  students.select { |str| str.start_with?("d") } >> new.array
end


def print(students)
  if student.start_with? "D"
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  else
    puts nil
  end
end



def print(students)
  if students.start_with? "D", "d"
    return "#{student[:name]} (#{student[:cohort]} cohort)"
      else
    return nil
  end
end



def print(students)
  if student.start_with?('d')
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# only print those which start with specific letter, say, "D"

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
