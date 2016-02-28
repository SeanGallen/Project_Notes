class Notes
  def iterator(arr, arg)
    arr.each do |x|
      if x =~ /#{arg}/i
        puts x
      end
    end
  end
end
