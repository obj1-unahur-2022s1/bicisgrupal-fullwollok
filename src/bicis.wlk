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
<<<<<<< HEAD
}
=======
	method cantAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
}
>>>>>>> ef95c0ce5eb5c6683fd988afd505bd44b046a82b
