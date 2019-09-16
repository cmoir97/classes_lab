require("minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudent < MiniTest::Test

def test_get_name
  student = Student.new("Cameron", "E34")
  assert_equal("Cameron", student.get_name())
end

def test_get_cohort
  student = Student.new("Cameron", "E34")
  assert_equal("E34", student.get_cohort())
end

def test_set_name
  student = Student.new("Cameron", "E34")
  student.set_name("Chris")
  assert_equal("Chris", student.get_name())
end


def test_set_cohort
  student = Student.new("Cameron", "E34")
  student.set_cohort("E35")
  assert_equal("E35", student.get_cohort())
end

def test_student_talks
  student = Student.new("Cameron", "E34")
  assert_equal("I can talk", student.student_talks())
end

def test_student_favourite_language
  student = Student.new("Cameron", "E34")
  assert_equal("I love Ruby", student.student_favourite_language("Ruby"))
end
end
