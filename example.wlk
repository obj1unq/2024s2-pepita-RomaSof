object pepita {
	var energia = 100
	//setter
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	//setter
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	//getter
	method energia() {
		return energia
	}
}

object alpiste {
	//getter
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	//getter
	method madurez() {
		return madurez
	}
	//setter
	method madurez(_madurez) {
		madurez = _madurez
	}
	//setter
	method madurar() {
		self.madurez(madurez + 1)
	}
	//getter
	method energiaQueAporta() {
		return base * madurez
	}	
}

//Ejercicio 1: Pepón
object pepon {
	var energia = 30
	//setter
   method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2  
	}
  //setter
  method volar(distancia) {
	energia = energia - 20 - (2 * distancia)
  }
  //getter
  method energia() {
	return energia
  }
}

//Ejercicio 2: Roque
object roque {
	var aveDeRoque = pepon 
	var vecesQueAlimentoAve = 0
	//setter
	method indicarNuevaAve(ave) {
	  aveDeRoque = ave
	  vecesQueAlimentoAve = 0
	}
	//setter
	method alimentar(comida) {
	  vecesQueAlimentoAve = vecesQueAlimentoAve + 1
	  aveDeRoque.comer(comida)
	}
	//getter
	method cenas() {
	  return vecesQueAlimentoAve
	}
}