//
//  ViewController.swift
//  CalculoIMC
//
//  Created by Admin on 01/01/22.
//

import UIKit

class CalculoImcViewController: UIViewController {
    
    var classeImc: [Pessoa] = []
    
    @IBOutlet var alturaTextField: UITextField?
    @IBOutlet var pesoTextField: UITextField?
    @IBOutlet var resultadoLabel: UILabel?
    
    @IBAction func calcularImc(_ sender: Any?){
        if let altura = alturaTextField?.text, let peso = pesoTextField?.text{
            guard let alturaConvertida = Double(altura) else { return }
            guard let pesoConvertido = Double(peso) else { return }
            
            let imc = Pessoa(altura: alturaConvertida, peso: pesoConvertido)
            classeImc.append(imc)
            
            let resultado = calculaImc(imc.peso, imc.altura)
            
            let imcConvertido = String(format: "%.2f", resultado)
            
            if resultado < 18.5 {
                resultadoLabel?.text = ("Seu IMC: \(imcConvertido) Magreza")
            }else if resultado > 18.5 && resultado < 24.9{
                resultadoLabel?.text = ("Seu IMC: \(imcConvertido) Normal")
            }else if resultado > 24.9 && resultado < 30{
                resultadoLabel?.text = ("Seu IMC: \(imcConvertido) Sobrepeso")
            }else if resultado > 30{
                resultadoLabel?.text = ("Seu IMC: \(imcConvertido) Obesidade")
            }
        }
    }
    
    func calculaImc(_ peso: Double, _ altura: Double) -> Double {
        return peso / (altura * altura)
    }
}
