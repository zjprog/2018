def print_owing
  print_banner
  outstanding = calculate_outstanding
  print_details(outstanding)
end

def print_banner
  puts "*************************"
  puts "***** Customer Owes *****"
  puts "*************************"
end

def print_details(amount)
  puts "name: #{@name}"
  puts "amount: #{amount}"
end

def calculate_outstanding
  @orders.inject(0.0) { |result, order| result + order.amount }
end
