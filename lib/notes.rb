
class Notes
  def initialize(argument)
    @argument = argument
    @reader = []
  #  @reader <<
  end

  def argument
    @argument
  end

  def reader
    @reader
  end
  def recall
   @reader << 'Add 1 to 2   1 + 2 # => 3'
   reader
  end
end
