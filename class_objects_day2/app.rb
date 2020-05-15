require 'pry'

require './kids.rb'
require './parent.rb'

cj = Parent.new 'Cj'
duncan = Kid.new 'Duncan'
miles = Kid.new 'Miles'

cj.add_kid(duncan)
cj.add_kid(miles)

binding.pry