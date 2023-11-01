

class Persona {
    
    let name : String
    var lastName : String
    var age : Int
    // objetos
    
    init (name : String, lastName: String, age:Int){
        self.name  = name
        self.lastName = lastName
        self.age = age
    }
    
    // metodo de la estructura o funcion asociada
    func personalInformation (){
        print("Nombre: \(name)")
        print("Apellido: \(lastName)")
        print("Edad: \(age)")
    }
}

class AditionalInformationYearOfBirth: Persona {
    
    var ageBirth: Int
    
    init(name: String, lastName: String, age: Int, ageBirth: Int) {
        self.ageBirth = ageBirth
        super.init(name: name, lastName: lastName, age: age)
    }
    override func personalInformation () {
        super.personalInformation()
        print("Año de Nacimiento: \(ageBirth)")
    }
}


let firstPerson = AditionalInformationYearOfBirth(name: "Juan", lastName: "Cortes", age: 33, ageBirth: 1989)

firstPerson.personalInformation()



