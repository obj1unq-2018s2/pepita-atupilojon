
import comidas.*

object pepon {
	var energia = 0
	method energia() {return energia}
	method comer(cosa, gramos) {energia += (cosa.energiaPorGramo() * gramos)/2}
	method volar(kms) {energia -= (kms * 0.5) + 1 }
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
	}
	method puedeVolar(unosKms) {return energia >= (1 + (unosKms * 0.5))}
}

object pipa {
	var kmsVolados = 0
	var gramosComidos = 0
	method kmsRecorridos() {return kmsVolados}
	method gramosIngeridos() {return gramosComidos}
	method comer(cosa,gramos) {gramosComidos += gramos}
	method volar(kms) {kmsVolados += kms}
	method haceLoQueQuieras() { }
	method puedeVolar(unosKms) {return true}
}
