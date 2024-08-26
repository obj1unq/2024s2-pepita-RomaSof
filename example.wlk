object pepita {
	var energia = 100
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	method energia() {
		return energia
	}
}
object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	method madurez() {
		return madurez
	}
	method madurez(_madurez) {
		madurez = _madurez
	}
	method madurar() {
		self.madurez(madurez + 1)
	}
	method energiaQueAporta() {
		return base * madurez
	}	
}

//Ejercicio 1: Pepón
object pepon {
	var energia = 30
   method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2  
	}
  method volar(distancia) {
	energia = energia - 20 - (2 * distancia)
  }
  method energia() {
	return energia
  }
}

//Ejercicio 2: Roque
object roque {
	//Aclarar que es de Roque no tiene sentido ya que pertenece al objeto "Roque"
	var aveAhora = pepon 
	var vecesQueAlimentoAve = 0
	method indicarNuevaAve(ave) {
	  aveAhora = ave
	  vecesQueAlimentoAve = 0
	}
	//a veces el orden de las acciones ejecución de los mensajes importa.
	method alimentar(comida) {
	  aveAhora.comer(comida)
	  vecesQueAlimentoAve = vecesQueAlimentoAve + 1
	}
	method cenas() {
	  return vecesQueAlimentoAve
	}
}
//para ser un setter tiene que cumplir que el método se llame como el atributo y reemplace el valor con el del parámetro.