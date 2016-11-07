//: Playground - noun: a place where people can play

import Cocoa

enum Velocidades : Int{
    case
        Apagado = 0,
        VelBaja = 20,
        VelMedia = 50,
        VelAlta = 120
    init(VelInicial : Velocidades){
        self = VelInicial
    }
}

class Automovil{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambios() -> (actual: Int, velocidadEngrane: String){
        
        var velActual : Int
        
        var velocidadEngranes: String
        
        switch velocidad{
        case .Apagado:
            velocidadEngranes = "Apagado"
            velActual = velocidad.rawValue
            velocidad = .VelBaja
        case .VelBaja:
            velocidadEngranes = "Vel Baja"
            velActual = velocidad.rawValue
            velocidad = .VelMedia
        case .VelMedia:
            velocidadEngranes = "Vel Media"
            velActual = velocidad.rawValue
            velocidad = .VelAlta
        case .VelAlta:
            velocidadEngranes = "Vel Alta"
            velActual = velocidad.rawValue
            velocidad = .VelMedia
        }
        
        return (velActual, velocidadEngranes)
    }
}

var auto = Automovil()

for n in 1...20{
    print(auto.cambios())
}