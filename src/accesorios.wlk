import bicis.*

object farolito {
	
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

object canasto {
	var property volumen
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}


class MorralDeBici {
	var property largo
	var property ojoDeGato
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = ojoDeGato
	
}


/*
 Para crear nuevos accesorios necesitariamos definir nuevos objetos o clases dependientemente de la cantidad que queramos instanciar.
 Cada instancia u objeto debe contener el contrato con los mensajes peso, carga y esLuminoso para respetar el polimorfismo.
*/