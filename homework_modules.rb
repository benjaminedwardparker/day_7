class Log
  @@log_array = []
  def self.log
    p @@log_array
  end
  def self.add_to_log(eater)
    @@log_array << "#{eater} ate"
  end
end

module FishEaters
  def eat
    puts "#{@name} is eating.  This has been logged."
    Log.add_to_log(@name)
  end
  def show
    p "#{@name} is an animal that eats fish"
  end
end

class Panda
  include FishEaters
  def initialize
    @name = "panda"
  end
end

class Shark
  include FishEaters
  def initialize
    @name = "shark"
  end
end

panda = Panda.new
shark = Shark.new
panda.show
shark.show
panda.eat
panda.eat
shark.eat
shark.eat
shark.eat
Log.log
