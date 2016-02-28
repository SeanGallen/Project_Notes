require 'open3'

class NotesTest < Minitest::Test

  def test_displays_all_notes_by_default


    notes_program = File.expand_path('../../bin/notes', __FILE__)
    stdout, stderr, exitstatus = Open3.capture3 'ruby', notes_program
    assert_equal '', stderr
    assert exitstatus.success?
    expected = /Convert 1 to a float *1.to_f # => 3/

    assert_match expected, stdout
  end
end


