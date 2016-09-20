class Foobar

  def self.baz(a)
    # Class method
    #changes each string into an integer, adds two to each number, 
    #keeps the even numbers only, removes any duplicates, rejects the 
    #resulting numbers greater than ten, and finally returns the sum of the resultingarray.

    a = a.map(&:to_i)
    a = a.map{|x| x += 2}
    a.delete_if{|x| x%2 != 0 }
   	a.uniq
   	a.delete_if{|x| x > 10}
   	return a.inject(0, :+)
    # Call with `Foobar.baz`
  end
end


