require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Nick", "E37")
  end

  def test_student_name
    assert_equal("Nick", @student.student_name)
  end

  def test_student_cohort
    assert_equal("E37", @student.student_cohort)
  end

  def test_set_student_name
    @student.set_student_name('Jim')
    assert_equal('Jim', @student.student_name)
  end

  def test_set_student_cohort
    @student.set_student_cohort("E35")
    assert_equal("E35", @student.student_cohort)
  end

  def test_student_talks
    assert_equal("I can talk!", @student.student_talks)
  end

  def test_say_favourite_language
    assert_equal("I love ruby", @student.say_favourite_language("ruby"))
  end

end
