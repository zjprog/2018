# Ian C. Anderson, Ruby 2 Keyword Arguments
#
# add in ~/.atom/packages/script/styles/script.less
# .script-view {
#   .panel-body pre {
#     background: @tool-panel-background-color;
#     color: @text-color;
#     font-size: 1.2rem;
#   }
#
# .atom/packages/linter-ui-default/styles/bottom-panel.less
# .sb-table.linter {
#   color: @text-color;
#   font-size: 1.3 * @font-size;

def foo(bar: 'default')
  puts bar
end

foo # => 'default'
foo(bar: 'baz') # => 'baz'

# Required keyword arguments

def koo(bar:)
  puts bar
end

# koo # => ArgumentError: missing keyword: bar
koo(bar: 'baz') # => 'baz'

def obvious_total(subtotal:, tax:, discount:)
  subtotal + tax - discount
end

puts obvious_total(subtotal: 100, tax: 10, discount: 5) # => 105
puts obvious_total(subtotal: 100, discount: 5, tax: 10) # => 105
