        require 'colorize'
        $:.unshift File.expand_path("./..", __FILE__)
        require 'controller'
        
        class Router  
          def initialize    
            @controller =  Controller.new  
          end  

          def perform
            puts "BIENVENUE DANS THE GOSSIP PROJECT"
            while true
              puts "**************************************".green
              puts "        Tu veux faire quoi BG ?".green
              puts "**************************************".green
              puts "           1. créer un gossip         ".green
              puts "           2. Afficher les potins     ".green
               puts"           3. Suprimer un potin       ".green
              puts "           4. quitter l'app           ".green
              puts "**************************************".green
              puts
              params = gets.chomp.to_i
              puts "**************************************"
              case params
             when 1
               puts
               puts "*************************************".blue
               puts "   Tu as choisi de créer un gossip" .blue
               puts "*************************************".blue
               puts
               @controller.create_gossip

              when 2
               puts
               puts "**************************************".blue
               puts "          Voici les potins" .blue
               puts "**************************************".blue
               puts
               @controller.index_gossips

             when 3
               puts
               puts "**************************************".blue
               puts "         suprimer les potins" .blue
               puts "**************************************".blue
               puts
               @controller.delete

             when 4
               puts
               puts "***************************************".blue
               puts "            À bientôt !".blue
               puts "***************************************".blue
               puts
                break
             else
               puts
               puts ":::::::::::::::::::::::::::::::::::::::".red
               puts "      Erreur, merci de ressayer".red
               puts ":::::::::::::::::::::::::::::::::::::::".red
               puts
              end
            end
          end
        end
        