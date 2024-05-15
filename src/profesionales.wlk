class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}

class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){ return #{universidad.provincia()} }
	
	method honorariosPorHora() { return universidad.honorariosPorHora() }
}

class ProfesionalLibre {
	var universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){ return provinciasDondePuedeTrabajar }
	
	method honorariosPorHora() { return honorariosPorHora }
}