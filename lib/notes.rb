class Notes
  def select(notes, selector)
    notes.select { |note| note =~ /#{selector}/i }
  end

  def select_all(notes, selectors)
    selectors.each { |selector| notes = select(notes, selector) }
    notes
  end
end
