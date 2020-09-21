require 'colorize'
$:.unshift File.expand_path("./..", __FILE__)
require "gossip"
class View
	attr_accessor :nom, :potin

  def create_gossip
  	puts "-------------------------------------------".yellow
  	puts "            entrer votre nom"
  	puts "-------------------------------------------".yellow
  	@nom = gets.chomp
  	puts "--------------------------------------------".yellow
  	puts "           entrer votre potin"
  	puts "--------------------------------------------".yellow
  	@potin = gets.chomp
  	puts "--------------------------------------------".yellow

  	params = {author:@nom,content:@potin}

  	return params
  end

  def index_gossips(gossips)

  	gossips.each do |ligne|
  		puts ligne.yellow
  	end


  end

  	def delete
  		
  	  puts "entrer la ligne à suprimé"
  	  num = gets.chomp.to_i
  	  return num
  	end
end

