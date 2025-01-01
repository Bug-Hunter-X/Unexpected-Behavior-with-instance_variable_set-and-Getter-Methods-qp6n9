# Unexpected Behavior with instance_variable_set and Getter Methods in Ruby
This repository demonstrates an uncommon bug in Ruby related to the interaction between instance variables, getter methods, and the `instance_variable_set` method.  When a getter method exists for an instance variable, directly modifying the instance variable using `instance_variable_set` may not update the value returned by the getter method consistently.

The `bug.rb` file shows the problematic behavior. The `bugSolution.rb` file provides a solution to this behavior.