

import Foundation

func createDateFormat() -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd" // Ajusta el formato de tu fecha de nacimiento según sea necesario
    return dateFormatter
}

// modularizar este segmento o bloque de codigo
// identificar el proposito de este bloque de codigo
// dar una responsabilidad basada en el proposito y luego un nombre

func calculateAge(fechaNacimiento: String) -> Int? {
    let dateFormatter = createDateFormat()
    if let fechaNac = dateFormatter.date(from: fechaNacimiento) {
        let calendario = Calendar.current
        let edad = calendario.dateComponents([.year], from: fechaNac, to: Date())
        return edad.year
    } else {
        return nil // En caso de que la fecha de nacimiento no sea válida
    }
}
func showingBirthInformation(fechaNacimiento: String) {
    if let edad = calculateAge(fechaNacimiento: fechaNacimiento){
        print("Tienes \(edad) años de edad.")
    } else {
        print("Fecha de nacimiento no válida.")
    }
    
}
showingBirthInformation(fechaNacimiento: "1990-05-15")



