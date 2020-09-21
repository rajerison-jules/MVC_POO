$:.unshift File.expand_path("./..", __FILE__)
require "gossip"
require "view"

class Controller

def create_gossip
# creation d'un instance pour stocker la class view
 @view = View.new.create_gossip 

 #cree un gossip a partir d'un hash dans la class view
 gossip = Gossip.new(@view[:author],@view[:content])
  
 #sauvegarder dans une base de donné
  gossip.save

end

def index_gossips
	#stock les donner dans une Array
	 goall = Gossip.all
	
	#demande a view d'afficher les potin
	View.new.index_gossips(goall)
	
end
def delete
	num = View.new.delete
	table =Gossip.all
	tabdel = Gossip.del(table,num)
	return tabdel
end


end