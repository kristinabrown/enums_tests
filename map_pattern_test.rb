gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      doubles.push(number * 2)
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    numbers = [1, 2, 3, 4, 5]
    squares = []
    numbers.each do |number|
      squares.push(number * number)
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []
    names.each do |x|
      lengths.push(x.length)
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    zip_codes = []
    numbers.each do |x|
      if x.to_s.size == 2
        zip_codes.push("000" + x.to_s)
      elsif x.to_s.size == 3
        zip_codes.push("00" + x.to_s)
      elsif x.to_s.size == 4
      zip_codes.push("0" + x.to_s)
      else
        zip_codes.push(x.to_s)
      end
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = []
    names.each do |x|
      backwards.push(x.reverse)
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = []
    words.each do |x|
      without_vowels.push(x.gsub(/[aeiou]/, ''))
    end

    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = []
    animals.each do |x|
      trimmed.push(x.slice(0...-1))
    end

    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end