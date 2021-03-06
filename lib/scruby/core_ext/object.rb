class Object
  # Wraps self int an array, #to_a seems to be deprecated
  def to_array
    [*self]
  end
  
  def to_proc
    Proc.new{ self }
  end

  def value *args
    self
  end
end


class TrueClass
  def to_i; 1; end
end

class FalseClass
  def to_i; 0; end
end