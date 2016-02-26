require_relative '../lib/notes'

class NotesTest < Minitest::Test
  def test_select_notes_whose_description_matches_an_argument_from_the_command_line
    x = Notes.new('Add 1 to 2  1 = 2 # => 3')
    assert_equal ['Add 1 to 2   1 + 2 # => 3'], x.recall

  end
end

