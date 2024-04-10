object olivia{
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion(){return gradoDeConcentracion}
	method recibirMasaje(){ gradoDeConcentracion += 3}
	method discutir(){ gradoDeConcentracion -= 1}
	method banioDeVapor(){}
	method comer(){}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz(){return esFeliz}
	method tieneSed(){return tieneSed}
	method peso(){return peso}
	
	method recibirMasaje(){esFeliz = true}
	method banioDeVapor(){
		peso = 30.max(peso-500)
		tieneSed = true
	}
	
	method tomarAgua(){tieneSed = false
	}
	method comer(){
		peso += 250
		tieneSed = true
	}
	method correr(){ peso = 30.max(peso-300)}
	method verNoticiero(){esFeliz = false}
	method estaPerfecto(){
		return esFeliz && !tieneSed && (peso.between(50,70))
	}
	method medioDiaEnCasa(){
		self.comer()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var contractura = 0
	var tienePielGrasosa = false
	
	method contractura(){return contractura}
	method tienePielGrasosa(){return tienePielGrasosa}
	
	method recibirMasaje(){contractura = 0.max(contractura-2)}
	method banioDeVapor(){ tienePielGrasosa = false}
	method comer(){tienePielGrasosa = true}
	method bajarAFosa(){
		tienePielGrasosa = true
		contractura += 1
	}
	method jugar(){
		contractura += 3
	}
	method diaDeTrabajo(){
		self.bajarAFosa()
		self.comer()
		self.bajarAFosa()
	}
}

object spa{
	method atender(persona){
		persona.recibirMasaje()
		persona.banioDeVapor()
	}
	method atenderATodos(){
		self.atender(olivia)
		self.atender(bruno)
		self.atender(ramiro)
	}
}