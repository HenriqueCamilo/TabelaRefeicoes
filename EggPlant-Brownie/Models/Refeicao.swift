//
//  Refeicao.swift
//  EggPlant-Brownie
//
//  Created by Henrique Camilo Mapa on 28/01/20.
//  Copyright © 2020 Henrique. All rights reserved.
//

import UIKit

class Refeicao: NSObject {

    init(nome: String, felicidade: Int){
        self.nome = nome;
        self.felicidade = felicidade
    }
    
    //Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []

    //Metodos
    
    func totalDeCalorias() -> Double{
        var total = 0.0
        
        for item in itens{
            total += item.calorias
        }
        return total
    }
}
