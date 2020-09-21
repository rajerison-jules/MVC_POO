
require "csv"
class Gossip

	def initialize(author, content)
		 @content = content
		 @author = author
	end
  
	def save
		temp = "#{@content};#{@author} \n"
      	File.open("./db/gossip.csv", "a") do |csv|
        csv.write(temp)
    	end
    end
    def self.all
          # création d'une array vide qui s'appelle all_gossips
          all_gossips = []
          
          # chaque ligne de ton CSV.each do |ligne|
        File.open("./db/gossip.csv", "r").each do |ligne|
        	 # gossip_provisoire = Gossip.new(paramètres de la ligne)
      		
      		all_gossips << ligne
      	end
          
           

          return all_gossips
        
	end

	def self.del(table,num)
		num = num - 1
		list = table.delete_at(num).to_s
		table = table.join
		File.open("./db/gossip.csv", "w") do |data|

        	data.write(table)

    	end

	end
end