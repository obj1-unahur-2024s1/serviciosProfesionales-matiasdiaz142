class SolicitantePersona{
	const property provincia
	method puedeSerAtendidoPor(unProfesional){
		return unProfesional.provinciasDondePuedeTrabajar().contains(provincia)
	}
}

class SolicitanteInstitucion{
	const universidadesConocidas
	method puedeSerAtendidoPor(unProfesional){
		return universidadesConocidas.any({unaUniversidad => unaUniversidad == unProfesional.universidad()})
	}
}

class SolicitanteClub{
	const provinciasDondeEsta
	method puedeSerAtendidoPor(unProfesional){
		return provinciasDondeEsta.any({unaProvincia => unProfesional.provinciasDondePuedeTrabajar().contains(unaProvincia)})
	}
}