//
//  ViewController.swift
//  practiceLayout
//
//  Created by Elaine Sangali on 17/10/19.
//  Copyright © 2019 Letícia Portela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var missoes = [Missao]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        missoes.append(Missao(hora: "18:30", desc: "Crianças salvas no cinema"))
        missoes.append(Missao(hora: "22:00", desc: "Meteóro evitado"))
        missoes.append(Missao(hora: "23:55", desc: "Roubo no museu"))
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return missoes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item") as! MissaoCell
        let row = indexPath.row
        let m = missoes[row]
        cell.missaoLabel.text = m.desc
        cell.hrLabel.text = m.hora
        cell.imgView.image = UIImage(named: "clock")
        return cell
    }
}


