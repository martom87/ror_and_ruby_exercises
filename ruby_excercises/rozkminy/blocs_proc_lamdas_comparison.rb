
# Source http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/

#Block, lambdas, proc are closures. Closure is a function or a reference to a function together with a referencing environment.
# Unlike a plain function, closures allow a function to access non-local variables even
# when invoked outside of its immediate lexical scope.
# Simply saying Similar to a suitcase,
# it’s a group of code that when opened
# (i.e. called), contains whatever was in it when you packed it (i.e. created it).
#
#


# Block Examples

[1,2,3].each { |x| puts x*2 }   # block is in between the curly braces

[1,2,3].each do |x|
  puts x*2                    # block is everything between the do and end
end

# Proc Examples
p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)              # The '&' tells ruby to turn the proc into a block

proc = Proc.new { puts "Hello World" }
proc.call                     # The body of the Proc object gets executed when called

# Lambda Examples
lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call
