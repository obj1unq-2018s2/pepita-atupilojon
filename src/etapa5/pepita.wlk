import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method visitar(lugar) {energia += lugar.revitalizador(self)}
}

object patagonia {
	method revitalizador(ave) {return 30}
}

object sierrasCordobesas {
	method revitalizador(ave) {return 70}
}

object marDelPlata {
	var temporadaAlta = true
	method cambioTemporada() {temporadaAlta = !temporadaAlta} 
	method revitalizador(ave) {
		if (temporadaAlta) {return -20}
		else {return 80}
	}
}

object noroesteArgentino {
	method revitalizador(ave) {return ave.energia() * 0.1}
}