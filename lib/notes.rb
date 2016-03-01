class Notes
  def select(notes, selector)
    notes.select { |note| note["descrip"] =~ /#{selector}/i }
  end

  def select_all(notes, selectors)
    selectors.each { |selector| notes = select(notes, selector) }
    notes.each do |position|
      puts position["descrip"].ljust(1) + position["example"].rjust(100 - position["descrip"].length)
    end
  end
end
