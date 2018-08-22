
import comidas.*

object pepon {
	var energia = 0
	method energia() {return energia}
	method comer(cosa, gramos) {energia += (cosa.energiaPorGramo() * gramos)/2}	// implementar
	method volar(kms) {energia -= (kms * 0.5) + 1 }           					// implementar
	method estaDebil() {return (energia < 50)}
	method estaFeliz() {return (energia.between(500,1000))}
	method haceLoQueQuieras() {													
		if (self.estaDebil()) {
			self.comer(alpiste,20)
		}
		else if (self.estaFeliz()) {
			self.volar(8)
		}
		else {
		}
		self.volar(1)
	}   // implementar
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
}
