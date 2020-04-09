### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # better naming convention is check_for_ace,
    # should also be a Class method - 'self.check_for_ace'
    if card.value = 1 # '=' is for assigning value, '==' should be used here
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # typo and missing a comma
  # should be Class method 'def self.highest_card(card1, card2)'
  if card1.value > card2.value
    return card # no local variable named 'card', should be 'return card1'
  else
    return card2
  end
end
end # one too many 'end'

def self.cards_total(cards)
  total # should be 'total = 0'
  for card in cards
    total += card.value # loops needs to end before returning value
    return "You have a total of" + total # 'total' should be inside the string as '#{}'
  end
end

# need one end to close the class
```
