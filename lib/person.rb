# your code goes here
# your code goes here
require 'pry'

class Person

attr_reader :name, :happiness, :hygiene

#attr_writer

attr_accessor :bank_account

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8 #min and max 0-10
    @hygiene = 8 #min and max 0-10 (0..10)
    end


    def happiness= (points)
      if points > 10
        @happiness = 10
      elsif points < 0
        @happiness = 0
      else
        @happiness = points
      end
    end

    def hygiene= (points)
      if points > 10
        @hygiene = 10
      elsif points < 0
        @hygiene = 0
      else
        @hygiene = points
      end
    end

    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end

    def happy?
      if @happiness > 7
        return true
      else
        return false
      end
    end

    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end

    def take_bath
      self.hygiene = @hygiene + 4
      p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness = @happiness +2
      self.hygiene = @hygiene - 3
      return "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
      self.happiness = @happiness + 3
      callee.happiness += 3
      # binding.pry
      return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_partner, topic)
      if topic == "politics"
        self.happiness = @happiness - 2
        convo_partner.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness = @happiness + 1
        convo_partner.happiness += 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end


end