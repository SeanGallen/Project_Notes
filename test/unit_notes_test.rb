require 'notes'

class NotesTest < Minitest::Test
  def test_description_matching_command_line_argument
    x = Notes.new('Add 1 to 2  1 = 2 # => 3')
    assert_equal ['Add 1 to 2   1 + 2 # => 3'], x.recall

  end
end
