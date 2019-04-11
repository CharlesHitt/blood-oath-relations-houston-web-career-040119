require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



follower1 = Follower.new("John", 18, "Everything for the Cult")
follower2 = Follower.new("Jane", 19, "I'm just here for the follows")
follower3 = Follower.new("Jimbo", 35, "I heard there would be free food?")
follower4 = Follower.new("James", 20, "What is this")

cult1 = Cult.new("Science + tology", "Florida", 1959, "We just want to take your money")
cult2 = Cult.new("Good Clean Fun", "Virginia", 1997, "Who need drugs, sex and alcohol")

bloodoath1 = BloodOath.new(follower1, cult1, "2010-05-17")
bloodoath2 = BloodOath.new(follower2, cult1, "2011-06-18")
bloodoath3 = BloodOath.new(follower3, cult1, "2001-06-03")
bloodoath4 = BloodOath.new(follower1, cult2, "2012-05-01")
bloodoath5 = BloodOath.new(follower2, cult2, "2017-03-22")





binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
