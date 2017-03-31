#SPOOKY VAMPIRES. Sparkles need not apply.

class Vampire

  def initialize(name)
    @name = name
    @age = 0
    @in_coffin = true
    @drank_blood_today = true
  end

    @@vampires = []

  def self.create(name) #adds to class, is a class variable.
    @@vampires << Vampire.new(name)
    @@vampires[-1]
  end

  def drink_blood #affects a single instance, is instance variable
    @drank_blood_today
  end

  def self.sunrise #affects the entire class
    @@vampires.each do |vamp| #checks through the entire class
      unless (vamp.in_coffin && vamp.drank_blood_today) #boolean check for both drinking blood AND being in coffin.
        @@vampires.delete(vamp)
    end
  end

  def self.sunset #affects entire class
    @drank_blood_today = false
    @in_coffin = false
  end

  def go_home #for individual vampires
    if @in_coffin
      puts "You're already in your coffin, idiot!"
    else
      @in_coffin = true
    end
  end
end
