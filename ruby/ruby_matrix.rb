# Class Matrix

require "matrix"

d = Matrix.diagonal(1, 2, 3)
print d
puts ''
puts d[2, 2]

# matrices are immutable
# to set matrix element we need a hack

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end
end

d = Matrix.diagonal(1, 1, 1)
d[2, 2] = 11
print d
