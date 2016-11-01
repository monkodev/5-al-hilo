class ManejaTXT
	def leetxt	
		preg=File.open('5alhilo.txt', 'r') 		
		 preg.readlines
	end	
end

class ManejaInterfaz
 def initialize
 	puts "  "
 	puts "--------------------------------------------------------------------------"
 	puts "Bienvenido a 5 al Hilo (ACRóNIMO)!!!. Para jugar, solo ingresa el término "
 	puts "      correcto para cada una de las definiciones, Listo? Vamos!"
 	puts "--------------------------------------------------------------------------"
 	puts "-----------------Creado por Giancarlo Malugani----------------------------"
 	puts "--------------------------------------------------------------------------"
 	puts "  "
 	puts "  " 	
 end	
 def juego_ini
 	puts "      ¿¿¿¿¿ Quieres comenzar el desafio??? Presiona (S)-Si / (N)-No"
 	puts " "
 	op = gets.chomp.capitalize!
 	if op=="S"
 		arraytx=ManejaTXT.new
 		arreglotx=arraytx.leetxt
 		cont=0
 		for i in 0..4
 			re=arreglotx[i*3+1].chomp.upcase	
 			puts ""
			puts "Define: " "#{arreglotx[i*3]}"
			resp=""
			while resp!=re 
				print "Adivinar: "
				resp=gets.chomp.upcase	
				if resp!=re 
					puts "INCORRECTO!! Prueba de nuevo..."
				else
					if cont ==4
						cont=cont+1
						break
					end
					puts "CORRECTO!!!!! Continúa avanzando ..."	
					cont=cont+1

				end			
			end
		end 	
 	elsif op=="N"
 		puts "           Gracias por pasarse por 5 al Hilo!!!! "
 			exit
 	else
 		puts "Opción incorrecta"
 		juego_ini
 	end
 	if cont==5
 		puts "---------------------------------------------------------- "
 		puts "FELICITACIONES ----GANASTE------HAS RESUELTO 5 AL HILO!!!! "
 		puts "---------------------------------------------------------- "
 	end
 end
end

b=ManejaInterfaz.new
b.juego_ini



