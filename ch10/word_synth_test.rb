require 'minitest/autorun'
require_relative 'word_synth'
require_relative 'effects'

class WordSynthTest < Minitest::Test
  def setup
    @synth = WordSynth.new
  end

  def test_play_witout_effects
    assert_equal 'Ruby is fun!', @synth.play('Ruby is fun!')
  end

  def test_play_with_reverse
    @synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', @synth.play('Ruby is fun!')
  end

  def test_play_with_many_effects
    effects = [Effects.echo(2), Effects.loud(3), Effects.reverse]
    effects.each { |effect| @synth.add_effect(effect) }
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', @synth.play('Ruby is fun!')
  end
end
