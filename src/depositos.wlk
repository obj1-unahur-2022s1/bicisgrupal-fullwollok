import bicis.*
import accesorios.*

class Deposito {
	const bicicletas = #{}
	
	method agregar(unaBicicleta) = bicicletas.add(unaBicicleta)
	method quitar(unaBicicleta) = bicicletas.remove(unaBicicleta)
	
	method bicisRapidas() = bicicletas.filter{b => b.velocidadCrucero() >= 25}
	method marcasDeBicis() = bicicletas.map{b => b.marca()}.asSet()
	method esDepositoNocturno() = bicicletas.all{b => b.tieneLuz()}
	method bicicletaPuedeLlevar(carga) = bicicletas.any{b => b.carga() > carga}
}
