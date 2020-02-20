//
//  RefeicoesTableViewController.swift
//  EggPlant-Brownie
//
//  Created by Henrique Camilo Mapa on 02/02/20.
//  Copyright © 2020 Henrique. All rights reserved.
//


//Importa o kit do UI
import UIKit
//Nao esquecer de setar a viewcontroller na view
class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate{
    
    // array de refeicoes. Colecao de objetos refeicao
    var refeicoes = [Refeicao(nome: "Macarrao", felicidade: 5),
                     Refeicao(nome: "Churros", felicidade: 4),
                     Refeicao(nome: "Pizza", felicidade: 3)]
    
    //Funcao que define quantidade de linhas
    //no caso a quantidade eh o numero de posicoes do array
    //refeicoes
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    //Funcao que define o conteudo de cada linha criada
    //ou seja, vai chamar essa funcao quantas inhas forem criadas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Cria o objeto celula que contem estilo default
        //e indentificador nulo
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        //pega o valor da linha que ele ta do array refeicoes
        //no caso da primeira vez NOME MACARRAO E FELICIDADE 5
        let refeicao = refeicoes[indexPath.row]
        
        //Insere no texlabel da celula o valor do refeicao.nome
        //no caso da primeira vez a string macarrao
        celula.textLabel?.text = refeicao.nome
        
        //retorna o objeto celula preenchido
        return celula
    }
    
    //Funcao que adiciona utilizando o append a nova refeicao
    func add(_ refeicao:Refeicao){
        print("Comi \(refeicao.nome)")
        refeicoes.append(refeicao)

        //faz com que a tableview recarregue com as novas informacoes
        tableView.reloadData()
    }
    
    //Funcao que utiliza o |segue| que eh a setinha para dizer que estou utilizando o viewcontroller da outra controller. Como se fosse um construtor
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.delegate = self
            }
        }
        
        
    }
}
