require 'notes'

class NotesTest < Minitest::Test
  def test_it_selects_the_matches_and_none_of_the_nonmatches
    notes = ['ab', 'ac', 'bc']
    assert_equal [],           Notes.new.select(notes, 'd')
    assert_equal ["ab"],       Notes.new.select(notes, 'ab')
    assert_equal ["ab", "ac"], Notes.new.select(notes, 'a')
    assert_equal ["ab", "bc"], Notes.new.select(notes, 'b')
    assert_equal ["ac", "bc"], Notes.new.select(notes, 'c')
  end

  def test_it_repeatedly_selects_across_a_list_of_selectors
    notes = ['ab', 'ac', 'bc']
    assert_equal ["ab", "ac"],  Notes.new.select_all(notes, ['a'])
    assert_equal ["ab"],        Notes.new.select_all(notes, ['a', 'b'])
    assert_equal ["ac"],        Notes.new.select_all(notes, ['a', 'c'])
    assert_equal [],            Notes.new.select_all(notes, ['a', 'c', 'b'])
  end

  def test_it_selects_help_string_when_ordered_to
    notes = ['h', 'b']
    assert_equal "h", Notes.new.select_help('h')
    refute_equal "h", Notes.new.select_help('b')
  end

  def test_it_selects_only_integers_with_integer_keyword
    notes = ['a', '12']
    assert_equal ["12"], Notes.new.select_integer(notes, 'integer')
    refute_equal ["a"], Notes.new.select_integer(notes, 'integer')
  end
end
