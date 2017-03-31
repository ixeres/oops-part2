#SPOOKY VAMPIRES. Sparkles need not apply.

class Vampire

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = true
    @drank_blood_today = true
  end

    @@vampires = []

  def self.create #adds to class, is a class variable.
    @@vampires << Vampire.new(name, age)
    @@vampires[-1]
  end

  def drink_blood #affects a single instance, is instance variable
    @drank_blood_today
  end

  def self.sunrise #affects the entire class
    if self.@in_coffin
      else
      @@vampires.delete_at(self)
    end
  end

  def self.sunset #affects entire class
    @drank_blood_today = false
    @in_coffin = false
  end

  def go_home #for individual vampires
    if self.@in_coffin
      puts "You're already in your coffin, idiot!"
    else
      @in_coffin = true
    end
  end
end
