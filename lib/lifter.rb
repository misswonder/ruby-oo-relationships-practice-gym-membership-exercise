class Lifter

  attr_reader :name, :lift_total

  @@all = []


  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all
  end 

  def my_memberships 
    Membership.all.select { |membership| membership.lifter == self }
  end 

  def my_gym
    self.my_memberships.map { |membership| membership.gym }
  end 

  def self.average_lift
    total_lift = Lifter.all.sum { |lifter| lifter.lift_total }
    total_lift / Lifter.all.length 
  end 

  def total_cost 
    total = 0
    self.my_memberships.map { |lifter| total += lifter.cost }
  end 

  def new_gym(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end 
    
end
