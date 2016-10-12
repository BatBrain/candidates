# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

#binding.pry
#pp find(5)
#pp dayssinceapplied?(@candidates[1])
#pp qualified_candidates(@candidates)
pp sort(@candidates)
