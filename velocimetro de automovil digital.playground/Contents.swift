//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 150
    
    init(velocidadInicial : Velocidades){
        
        self = velocidadInicial
}
    var description : String {
        switch self {
        case .apagado: return "Apagado";
        case .velocidadBaja: return "Velocidad Baja";
        case .velocidadMedia: return "Velocidad Media";
        case .velocidadAlta: return "Velocidad Alta";
        }
    }
    


}



class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        let velActual = self.velocidad
        
        switch(self.velocidad){
        case .apagado:
            self.velocidad = .velocidadBaja
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
        case .velocidadAlta:
            self.velocidad = .velocidadMedia
        }
        
        return (velActual.rawValue, velActual.description)
    }
}

let auto: Auto = Auto()
auto.velocidad
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("Velocidad: ",result.actual, "\t", result.velocidadEnCadena)
}