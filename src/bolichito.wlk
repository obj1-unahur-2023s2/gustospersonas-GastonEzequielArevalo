import objetos.*
import materiales.*
import colores.*
import persona.*

object bolichito {
	var vidriera = remera
	var mostrador = pelota
	
	method vidriera(){
		return vidriera
	}
	
	method cambiarObjetoDeVidriera(otroObjeto){
		vidriera = otroObjeto
	}
	
	method mostrador(){
		return mostrador
	}
	
	method cambiarObjetoDeMostrador(otroObjeto){
		mostrador = otroObjeto
	}
	
	method esBrillante(){
		return vidriera.material().esBrillante() and mostrador.material().esBrillante()
	}
	
	method esMonocromatico(){
		return vidriera.color() == mostrador.color()
	}
	
	method estaDesequilibrado(){
		return vidriera.peso() != mostrador.peso()
	}
	
	method tieneAlgoDeColor(color){
		return vidriera.color() == color or mostrador.color() == color
	}
	
	method puedeMejorar(){
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
	
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(vidriera) or persona.leGusta(mostrador)
	}
	
}
