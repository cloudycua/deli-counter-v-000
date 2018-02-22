def line(current_line)
  if current_line == []
    puts "The line is currently empty."
  else
    puts "The line is currently:"
    current_line.each.with_index { |customer, index| puts " #{index+1}. #{customer}" }
  end
end


def take_a_number(current_line, new_customer)
  current_line << new_customer
  puts "Welcome, #{new_customer}. You are number #{current_line.size} in line."
end

def now_serving(current_line)
  if current_line.size > 0
    puts "Currently serving #{current_line.first}."
    current_line.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
