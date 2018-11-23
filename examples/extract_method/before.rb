def print_owing
  outstanding = 0.0
  # print banner
  puts "*************************"
  puts "***** Customer Owes *****"
  puts "*************************"
  # calculate outstanding
  @orders.each do |order|
    outstanding += order.amount
  end
  # print details
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end

