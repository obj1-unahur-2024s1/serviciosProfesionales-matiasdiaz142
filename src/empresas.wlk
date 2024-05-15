class EmpresaDeServicios {
	const profesionales = new List()
	var honorarioReferencia
	
	//Etapa 1
	method honorarioReferencia(unaCant) {honorarioReferencia = unaCant}	
	method contratarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	method profesionalesQueEstudiaronEn(unaUniversidad) {
		return profesionales.filter({unProfesional => unProfesional.universidad() == unaUniversidad}).size()
	}
	method profesionalesCaros(){
		return profesionales.filter({unProfesional => unProfesional.honorariosPorHora() > honorarioReferencia})
	}
	method universidadesFormadoras(){
		return profesionales.map({unProfesional => unProfesional.universidad()}).asSet()
	}
	method profesionalMasBarato(){
		return profesionales.min({unProfesional => unProfesional.honorariosPorHora()})
	}
	method esDeGenteAcotada(){
		return profesionales.all({unProfesional => unProfesional.provinciasDondePuedeTrabajar().size() <= 3})
	}
	
	//Etapa 2
	method puedeSatisfacerA(unSolicitante){
		profesionales.any({unProfesional => unSolicitante.puedeSerAtendidoPor(unProfesional)})
	}
}