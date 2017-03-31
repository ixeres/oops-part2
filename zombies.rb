# Oh no, it's zombies!

class Zombies

@@horde = []
@@plague_level = 10
@@max_speed = 5
@@max_strength = 8
@@default_speed = 1
@@default_strength = 3

def initialize(speed, strength)
  @@default_speed = speed
  if speed > @@max_speed
    @@max_speed = speed
  end
  @@default_strength = strength
  if strength > @@max_strength
    @@max_strength = strength
  end
end

def encounter
  outrun_zombie?
  if true
    puts "You escaped the zombie horde!"
  else
    survive_attack?
    if true
      puts "You survived the zombie onslaught!"
    else
      puts "Oh no! You were killed by the zombie horde!"
    end
  end
end

def outrun_zombie?
  rand(@@max_speed + 1) > @speed #remember, the '?' makes it a boolean variable, you don't have to do all the 'ifs'!
end

def survive_attack?
  rand(@@max_strength + 1) > @strength
end

def self.all
  @@horde
end

def self.new_day
  some_die_off
  spawn
  increase_plague_level
end

def self.some_die_off
  dead = rand(11)
  dead.times do
    @@horde.delete_at(@@horde.size) #used delete_at to fix the 'wrong number of arguments' error.
  end
end

def self.spawn
  zombie_count = rand(@@plague_level +1) #should fix the 'private method' problems?
  zombie_count.times do
    @@horde << Zombies.new((@@max_speed +1), rand(@@max_strength + 1)) #takes number from above, creates inital values for zombies, adds them to the horde.
  end
end

def self.increase_plague_level
  @@plague_level += rand(3)
end
end
