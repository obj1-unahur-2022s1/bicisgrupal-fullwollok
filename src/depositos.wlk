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
	method marcaDeBiciMasRapida() = bicicletas.max{b => b.velocidadCrucero()}.marca()
	method bicisLargasDeMasDe(largo) = bicicletas.filter({b => b.largo() > largo })
	method cargaTotalBicisLargas() = self.bicisLargasDeMasDe(170).sum{b => b.carga()}
	method cantidadDeBicisSinAccesorios() = bicicletas.count{b => b.accesorios().isEmpty()}
	method esCompanera(unaBici){
		return bicicletas.filter{b => b.esCompanera(unaBici)}
	}
	
}
