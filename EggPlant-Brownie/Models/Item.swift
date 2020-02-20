//
//  Item.swift
//  EggPlant-Brownie
//
//  Created by Henrique Camilo Mapa on 28/01/20.
//  Copyright © 2020 Henrique. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    let nome:String
    let calorias: Double
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
}
