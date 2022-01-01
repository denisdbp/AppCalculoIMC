//
//  Imc.swift
//  CalculoIMC
//
//  Created by Admin on 01/01/22.
//

import Foundation

class Pessoa {
    var altura: Double
    var peso: Double
    
    init(altura: Double, peso: Double) {
        self.altura = altura
        self.peso = peso
    }
    
        func calculaImc(peso: Double, altura: Double) -> Double {
            return peso / (altura * altura)
        }

}
