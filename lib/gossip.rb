require "csv"
class Gossip

	def initialize(author, content)
		 @content = content
		 @author = author
	end

	def save
		temp = "#{@content};#{@author}"
      File.open("../db/gossip.csv", "w") do |csv|
        csv.write(temp)
    	end
    end
end