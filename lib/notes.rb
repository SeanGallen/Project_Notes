class Notes
  def select(notes, selector)
    notes.select { |note| note =~ /#{selector}/i }
  end

  def select_all(notes, selectors)
    selectors.each { |selector| notes = select(notes, selector) }
    notes
  end

  def select_help(selector)
    selector
  end

  def select_integer(notes, selector)
    selector = /[0-9]/
    notes.select { |note| note =~ /#{selector}/ }
  end
end
