require 'Open3'


class NotesTest < Minitest::Test

  def test_displays_all_notes_by_default

expected = 'Add 1 to 2    1 + 2  # => 3
Subtract 5 from 2    2 - 5  # => -3
Is 1 less than 2    1 < 2  # => true
Is 1 equal to 2    1 == 2 # => 3
Is 1 greater than 2    1 > 2  # => 3
Is 1 less than or equal to 2    1 <= 2 # => 3
Is 1 greater than or equal to 2    1 >= 2 # => 3
Convert 1 to a float    1.to_f # => 3
Concatenate two arrays    [1,2] + [2, 3]   # => [1, 2, 2, 3]
Remove elements in second array from first    [1,2,4] - [2, 3] # => [1,4]
Access an element in an array by its index    ["a","b","c"][0] # => "a"
Find out how big the array is    ["a","b"].length # => 2
'

notes_program = File.expand_path('../../bin/notes', __FILE__)
stdout, stderr, exitstatus = Open3.capture3 'ruby', notes_program
assert_equal '', stderr
assert exitstatus.success?
assert_equal expected, stdout
  end
end
