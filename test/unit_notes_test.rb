require 'notes'

class NotesTest < Minitest::Test
  def test_description_matching_command_line_argument
    x = NotesEx.new
    assert_equal 'Convert 1 to a float    1.to_f # => 3', x.data.iterator("Convert")
  end
end
