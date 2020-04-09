require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class CardGameTest < MiniTest::Test

  def setup()
    @card1 = Card.new('diamond', 1)
    @card2 = Card.new('space', 3)
    @cards = [@card1, @card2]
  end

  def test_check_for_ace__is_true()
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_check_for_ace__is_false()
    assert_equal(false,CardGame.check_for_ace(@card2))
  end

  def test_highest_card__first_card()
    assert_equal(@card2, CardGame.highest_card(@card2, @card1))
  end

  def test_highest_card__second_card()
    assert_equal(@card2, CardGame.highest_card(@card1, @card2))
  end

  def test_cards_total()
    assert_equal("You have a total of 4", CardGame.cards_total(@cards))
  end


end
