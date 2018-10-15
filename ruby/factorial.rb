def fact(n)
  n.zero? ? 1 : n * fact(n - 1)
  # if n.zero?
  #   return 1
  # else
  #   return n * fact(n - 1)
  # end
end

# add new method to builtin class
class Integer
  def fact
    zero? ? 1 : self * (self - 1).fact
    # if zero?
    #   return 1
    # else
    #   return self * (self - 1).fact
    # end
  end
end

print "fact(10) = #{fact(10)}\n"
print "10.fact = #{10.fact}\n"
