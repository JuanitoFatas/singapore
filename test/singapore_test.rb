require "test_helper"

class SingaporeTest < MiniTest::Test
  def test_respond_to_hor?
    assert "".respond_to?(:empty_hor?)
  end

  def test_respond_to_lah?
    assert "".respond_to?(:upcase_lah!)
  end

  def test_hor?
    assert [].empty_hor?
    refute [1,2,3].empty_hor?
  end

  def test_lah!
    assert "SINGAPORE", "singapore".upcase_lah!
    assert "singapore", "SINGAPORE".downcase_lah!
  end

  def test_exceptions_to_s
    prefix = Singapore::ExceptionExtensions::MSG_PREFIX.join('|')
    msg = "something went wrong..."

    assert_match(/(#{prefix}), #{msg}/, Exception.new(msg).to_s)
    assert_match(/(#{prefix}), #{msg}/, Exception.new(msg).message)
  end

  def test_bobian
    assert_raises Exception do
      bobian 1/0
    end
  end

  def test_ord
    assert_raises SystemExit do
      ord
    end
  end
end
