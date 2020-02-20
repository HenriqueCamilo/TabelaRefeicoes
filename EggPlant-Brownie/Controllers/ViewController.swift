//
//  ViewController.swift
//  EggPlant-Brownie
//
//  Created by Henrique Camilo Mapa on 23/01/20.
//  Copyright © 2020 Henrique. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate{
    func add(_ refeicao:Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: - Atributos
    
    // Cria uma variavel do tipo da controller que eu quero passar a informacao
    var delegate: AdicionaRefeicaoDelegate?
    var itens = ["Molho de tomate","Queijo" , "Molho apimentado", "Manjericao"]
    
    
    
    //MARK: - IBOutlet

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let linhasDaTabela = indexPath.row
        let item = itens[linhasDaTabela]
        
        celula.textLabel?.text = item
        return celula
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        
    }
    
    //MARK: - Actions
    
    @IBAction func Adicionar(_ sender: Any) {
//        if let nomeRefeicao = nomeTextField?.text, let               felicidadeRefeicao = felicidadeTextField?.text{
//
//            let nome = nomeRefeicao
//
//            if let felicidade = Int(felicidadeRefeicao){
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//
//                print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)");
//            }else{
//                print("Erro ao criar refeicao")
//            }
//        }
        
        guard let nomeRefeicao = nomeTextField?.text else{
            return
        }
        
        guard let felicidadeRefeicao =  felicidadeTextField?.text, let felicidade = Int(felicidadeRefeicao) else{
            return
        }
        
        let refeicao = Refeicao(nome: nomeRefeicao, felicidade: felicidade)
        
        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)");
 
        
        //Chama a funcao add na tableViewController passando o objeto criado
        delegate?.add(refeicao)
        
        //da um pop(retira a tela que esta em cima e volta pra tela de baixo
        navigationController?.popViewController(animated: true)
        
    }
    
}


