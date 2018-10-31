# person class initialized with a name, start with 8 happiness and hygiene points, $25
# happiness and hygiene variable can change 0 - 10
# amount variable can change, no limit
# use range for min to max
require 'pry'

class Person
  attr_accessor :happiness, :hygiene, :amount
  attr_reader :name

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @amount = 25
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end
  # The get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
  def get_paid(salary)
    @amount += salary
    "all about the benjamins"
  end

  def min_max
    @happiness = 0 if @happiness < 0
    @happiness = 10 if @happiness > 10
    @hygiene = 0 if @hygiene < 0
    @hygiene = 10 if @hygiene > 10
  end

  # The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub
  def take_bath
    @hygiene += 4
    min_max
    "♪ Rub-a-dub just relaxing in the tub"
  end
  # The work_out method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
  def work_out
    @happiness += 2
    @hygiene -= 3
    min_max
    "♪ another one bites the dust ♫"
  end
  # The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
  def call_friend(person)
    @happiness += 3
    person.happiness += 3
    puts "Hi Felix! It's Stella. How are you?"
  end
  # Finally, the start_conversation method should accept two arguments, the person to start a conversation with and the topic of conversation.
  def start_conversation(person, topic)
    if topic == "politics"
      @happiness -= 1
      person.happiness -= 1
      min_max
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      person.happiness += 1
      min_max
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
  # If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
  # If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
  # If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
end
