        $:.unshift File.expand_path("./..", __FILE__)
        require 'controller'
        class Router  
          def initialize    
            @controller =  Controller.new  
          end  

          def perform
            puts "BIENVENUE DANS THE GOSSIP PROJECT"
            while true
              puts "Tu veux faire quoi BG ?"
              puts "1. Je veux créer un gossip"
              puts "4. Je veux quitter l'app"
              params = gets.chomp.to_i
              case params
             when 1
               puts "Tu as choisi de créer un gossip" 
               @controller.create_gossip
             when 4
               puts "À bientôt !"
                break
             else
               puts "Erreur, merci de ressayer"
              end
            end
          end
        end
        Router.new.perform