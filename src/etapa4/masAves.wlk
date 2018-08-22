
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
	var kmsVolados = 0
	var gramosComidos = 0
	method kmsRecorridos() {return kmsVolados}
	method gramosIngeridos() {return gramosComidos}
	method comer(cosa,gramos) {gramosComidos += gramos}
	method volar(kms) {kmsVolados += kms}
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código?
	// respuesta: para que "roque" pueda mandar los mismos mensajes a sus "aves"
}
