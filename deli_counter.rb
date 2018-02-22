def line(current_line)
  if current_line == []
    puts "The line is currently empty."
  else
    line_list = []
    current_line.each_with_index do |customer, index|
      line_list << " #{index.to_i+1}. #{customer}"
    end
    puts "The line is currently:#{line_list}"
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
