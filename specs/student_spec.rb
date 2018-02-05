require ('minitest/autorun')
require_relative('../student')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Bert", 19)
  end

  def test_student_name
    name = @student.name()
    assert_equal("Bert", name)
  end

  def test_student_cohort
    cohort = @student.cohort()
    assert_equal(19, cohort)
  end

  def test_set_student_name
    @student.set_name("Dan")
    name = @student.name()
    assert_equal("Dan", name)
  end

  def test_set_student_cohort
    @student.set_cohort(20)
    cohort = @student.cohort()
    assert_equal(20, cohort)
  end

  def test_student_talk
    sentence = @student.talk()
    assert_equal("I can talk!", sentence)
  end

  def test_student_say_favourite_language
    favourite_language = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", favourite_language)
  end

end
