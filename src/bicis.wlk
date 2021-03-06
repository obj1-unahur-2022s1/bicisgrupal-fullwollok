import accesorios.*

class Bicicleta{
	const property rodado
	const property largo
	const property marca
	const accesorios = #{}
	
	method altura() = rodado * 2.5 + 15
	method velocidadCrucero() = if(largo>120){rodado + 6}else{rodado + 2}
	method carga() = accesorios.sum{a => a.carga()}
	method peso() = rodado / 2 + accesorios.sum{a => a.peso()}
	method tieneLuz() = accesorios.any{a => a.esLuminoso()}
	method agregarAccesorio(unAccesorio) = accesorios.add(unAccesorio)
	method quitarAccesorio(unAccesorio) = accesorios.remove(unAccesorio)
	method cantAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
	method accesorios() = accesorios
	
	method esCompanera(unaBici){
		return self.esMismaMarca(unaBici) && self.noDifierenDeLargo(unaBici) && self.noSonIguales(unaBici)
	}
	
	method esMismaMarca(unaBici){
		return marca == unaBici.marca()
		}
	
	method noDifierenDeLargo(unaBici){
		var salida 
		if(largo > unaBici.largo()){
			salida = (largo - unaBici.largo()) <= 10
		}
		else{
			salida = (unaBici.largo() - largo) <= 10
		}
		return salida
	}
	
	method noSonIguales(unaBici){
		return unaBici != self
	}
}
