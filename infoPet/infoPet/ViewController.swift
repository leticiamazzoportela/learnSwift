//
//  ViewController.swift
//  infoPet
//
//  Created by Leticia on 03/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    var atvs = [Atividades]()
    var delegate: DadosIniciais?

    override func viewDidLoad() {
        super.viewDidLoad()
        let primeiro = Atividades(titulo: "Corrida", desc: "Corri atrás de um rato")
        add(atv: primeiro)
    }
    
    func add(atv:Atividades) {
        atvs.append(atv)
        tableView.reloadData()
    }
    
    
    @IBAction func editar(_ sender: Any) {
        let perfil = Perfil(nome: nomeLabel.text!, idade: idadeLabel.text!, genero: generoLabel!.text!)
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "telaNav") as? ViewEditController
        controller?.delegate = self
        controller?.carregaDados(per: perfil)
        self.navigationController?.pushViewController(controller!, animated: true)        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return atvs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula_atividade") as! AtividadesTableViewCell
        let row = indexPath.row
        let atv = atvs[row]
        cell.tituloLabel.text = atv.titulo
        cell.descLabel.text = atv.desc
        return cell
    }
}

extension ViewController: EdicaoPerfil {
    func dadosAlterados(per: Perfil) {
        nomeLabel.text = per.nome
        idadeLabel.text = per.idade
        generoLabel.text = per.genero
    }
}
