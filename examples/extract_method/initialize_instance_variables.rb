@name = 'Wlodek'
Order = Struct.new(:amount)
@orders = []
@orders << Order.new(10.0) << Order.new(15.0)
