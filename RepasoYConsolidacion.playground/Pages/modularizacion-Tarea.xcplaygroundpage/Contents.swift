import Foundation

// este bloque de codigo establece formato de fecha
func setTheDateFormat() -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd" // Ajusta el formato de tu fecha de nacimiento según sea necesario
    return dateFormatter
}
// este bloque de codigo convierte la cadena en un objeto
func convertDateToAnObject(from dateString: String) -> Date? {
    let dateFormatter = setTheDateFormat()
    return dateFormatter.date(from: dateString)
}
// este bloque de codigo calcula la edad
func calculateAge(from birthDate: Date) -> Int? {
    let calendario = Calendar.current
    let edad = calendario.dateComponents([.year], from: birthDate, to: Date())
    return edad.year
}
// funcion principal que muestra la informacion de la fecha de nacimiento
func showingBirthInformation(fechaNacimiento: String) {
    if let birthDate = convertDateToAnObject(from: fechaNacimiento), let edad = calculateAge(from: birthDate){
        print("Tienes \(edad) años de edad.")
    } else {
        print("Fecha de nacimiento no válida.")
    }
}
showingBirthInformation(fechaNacimiento: "1989-04-13")
