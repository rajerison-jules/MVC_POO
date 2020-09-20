$:.unshift File.expand_path("./..", __FILE__)
require "gossip"
require "view"

class Controller

def create_gossip
  potins = []

  puts"ecrit ton Nom"
  nom = gets.chomp

  puts "ecrit ton potin"
  potin = gets.chomp
  
  gossip = Gossip.new(nom,potin)
  potins << gossip
  my_gossip = [potins].flatten.join("\n")
  
  my_gossip.gossip.save
end

end