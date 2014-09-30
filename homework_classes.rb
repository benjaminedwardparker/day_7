class Log
  @@log_array = []
  def self.log
    p @@log_array
  end
  def self.add_to_log(eater)
    @@log_array << "#{eater} ate"
  end
end

class FishEaters
  def initialize
    @name = "fish eater"
  end
  def eat
    puts "#{@name} is eating.  This has been logged."
    Log.add_to_log(@name)
  end
end

class Panda < FishEaters
  def initialize
    @name = "panda"
  end
end

class Shark < FishEaters
  def initialize
    @name = "shark"
  end
end

panda = Panda.new
shark = Shark.new
panda.eat
panda.eat
shark.eat
Log.log
