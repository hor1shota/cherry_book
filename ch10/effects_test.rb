require 'minitest/autorun'
require_relative 'effects'

class EffectsTest < Minitest::Test
  def test_reberse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
end
