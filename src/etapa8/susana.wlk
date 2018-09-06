
import comidas.*
import masAves.*
import pepita.*
import roque.*

object susana {
	var pupilo = null
	method pupiloActual() {return pupilo}
	method tuPupiloEs(ave) {pupilo = ave}
	method entrenar() {
		pupilo.comer(alpiste,100)
		pupilo.volar(20)
	}
}