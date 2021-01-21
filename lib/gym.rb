class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def my_memberships 
    Membership.all.select { |membership| membership.gym == self }
  end 

  def my_lifters
    self.my_memberships.map { |membership| membership.lifter }
  end 

  def my_lifters_name
    self.my_lifters.map { |lifter| lifter.name }
  end 

  def lift_total
    total = 0
    self.my_lifters.map { |lifter| total += lifter.lift_total }
  end

end
