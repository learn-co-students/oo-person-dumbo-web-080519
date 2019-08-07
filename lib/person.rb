require 'pry'
# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name_arg)
    @name = name_arg
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    if value > 10
      value = 10
    elsif value < 0
      value = 0
    end

    @happiness = value
  end

  def hygiene=(h_value)
    if h_value > 10
      h_value = 10
    elsif h_value < 0
      h_value = 0
    end

    @hygiene = h_value
  end

  # def change_happiness(amount)
  #   if @happiness < 10
  #     @happiness += amount
  #     if @happiness > 10
  #       @happiness = 10
  #     elsif @happiness < 0
  #       @happiness = 0
  #     end
  #   end
  # end

  # def change_hygiene(amount)
  #   if @hygiene < 10
  #     @hygiene += amount
  #     if @hygiene > 10
  #       @hygiene = 10
  #     elsif @hygiene < 0
  #       @hygiene = 0
  #     end
  #   end
  # end

  def happy?
    @happiness > 7 ? (true) : (false)
  end

  def clean?
    @hygiene > 7 ? (true) : (false)
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = (@hygiene -= 3)
    self.happiness = (@happiness += 2)
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness = (@happiness += 3)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = (@happiness -= 2)
      friend.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness = (@happiness += 1)
      friend.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end



test = Person.new("Test")
