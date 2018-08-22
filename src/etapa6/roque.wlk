
import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilo = null
	method pupiloActual() {return pupilo}
	method tuPupiloEs(ave) {pupilo = ave}
	method entrenar() {
		pupilo.volar(10)
		pupilo.comer(alpiste,300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}
}