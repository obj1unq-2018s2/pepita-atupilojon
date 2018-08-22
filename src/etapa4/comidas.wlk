
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

object bigMac {
	method energiaPorGramo() { return 2 }
}

object alcaucil {
	method energiaPorGramo() { return 20 }
}

object sorgo {
	method energiaPorGramo() { return 9 }
}

object mijo {
	var estaMojado = false
	method energiaPorGramo() {
		if (estaMojado) {return 15}
		else {return 20}
	}
	method secarse() {estaMojado = false}
	method mojarse() {estaMojado = true}
}

object canelones {
	var calCanelones = 0
	var baseCal = 20
	var conSalsa = false
	var conQueso = false
	method energiaPorGramo() {
		calCanelones = baseCal
		if (conSalsa) {calCanelones += 5}
		if (conQueso) {calCanelones += 7}
		return calCanelones
	}
	method agregarSalsa() {conSalsa = true}
	method agregarQueso() {conQueso = true}
	method quitarSalsa() {conSalsa = false}
	method quitarQueso() {conQueso = false}
}