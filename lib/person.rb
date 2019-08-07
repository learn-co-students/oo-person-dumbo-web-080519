# your code goes here
class Person

    attr_reader :name, :happiness ,:hygiene
    attr_accessor :bank_account 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        if number >= 10
            @happiness = 10
        elsif number <  0
            @happiness = 0
        else  
            @happiness = number
        end
    end

    def hygiene=(number)
        if number > 10
            number = 10
        elsif number <  0
            number = 0 
            
        end
        @hygiene = number
    end

    def happy?
         @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
       self.hygiene -= 3 
       self.happiness += 2
       '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
    #     if topic == "politics"
    #         self.happiness -= 2
    #         person.happiness -= 2
    #     end
    #     'blah blah partisan blah lobbyist'
    # end
        case topic
        when "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end

