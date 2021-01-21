# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

yvonne = Lifter.new("Yvonne", 50)
alex = Lifter.new("Alex", 100)


gym_1 = Gym.new("24 Hours")
gym_2 = Gym.new("24 Fitness")
gym_3 = Gym.new("Planet Fitness")


membership_1 = Membership.new(100, yvonne, gym_1)
membership_2 = Membership.new(80, alex, gym_2)
membership_3 = Membership.new(60, alex, gym_3)


binding.pry

puts "Gains!"
