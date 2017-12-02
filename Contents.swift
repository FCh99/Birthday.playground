//: Playground - noun: a place where people can play

import UIKit



class Tarta {
    
    var hayDiabéticos = false
    var edadCumpleNiño = 0
    var numNenes = 0
    var ingredientes = [String]()
    var numVelitas = 0
    

    init(numNenes: Int, hayDiabéticos: Bool, edadCumpleNiño: Int) {
        self.hayDiabéticos = hayDiabéticos
        self.edadCumpleNiño = edadCumpleNiño
        self.numNenes = numNenes
        self.numVelitas = numVelas(añosNiñoCumple: edadCumpleNiño)
        self.ingredientes = componentes(numeroNiños: numNenes, presenciaDiabéticos: hayDiabéticos)
    }
    
    
    
    func numVelas (añosNiñoCumple: Int) -> Int {
        let numeroDeVelas = añosNiñoCumple
        return numeroDeVelas
    }
    
    
    
    func componentes (numeroNiños: Int, presenciaDiabéticos: Bool) -> [String] {
        var listaIngred = [String]()
        
        if numeroNiños == 1 {
            listaIngred = ["Chocolate"]
            if presenciaDiabéticos == true {
                listaIngred = ["Chocolate sin azucar"]
            }
            }else if numeroNiños == 2 {
                listaIngred = ["Chcolate", "Nata"]
            if presenciaDiabéticos == true {
                listaIngred = ["Chocolate amargo", "Nata sin azucar"]
            }
            
            }else {
                listaIngred = ["Chcolate", "Nata", "Helado"]
            if presenciaDiabéticos == true {
                listaIngred = ["Chcolate amargo", "Nata sin azucar", "Sorbete de limón"]
            }
            
            }
            return listaIngred
    }
    

}

let tartaCumpleToni = Tarta(numNenes: 8, hayDiabéticos: true, edadCumpleNiño: 4)
print("edad cumple niño: \(tartaCumpleToni.edadCumpleNiño)")
print("velitas para la tarta: \(tartaCumpleToni.numVelitas)")
print("Ingredientes tarta: \(tartaCumpleToni.ingredientes)")









