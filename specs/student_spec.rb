require ('minitest/autorun')
require_relative('../student')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Bert", 19)
  end

  def test_get_name
    name = @student.get_name()
    assert_equal("Bert", name)
  end

  def test_get_cohort
    cohort = @student.get_cohort()
    assert_equal(19, cohort)
  end

  def test_set_name
    @student.set_name("Dan")
    name = @student.get_name()
    assert_equal("Dan", name)
  end

  def test_set_cohort
    @student.set_cohort(20)
    cohort = @student.get_cohort()
    assert_equal(20, cohort)
  end

  def test_student_talk
    blablabla = @student.talk()
    assert_equal("I can talk!", blablabla)
  end

  def test_student_say_favourite_language
    ruby_love = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", ruby_love)
  end

end
