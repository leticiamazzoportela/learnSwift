//
//  ViewDialogAddController.swift
//  infoPet
//
//  Created by Leticia on 04/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import Foundation
import UIKit

class ViewDialogAddController: UIViewController {
    
    @IBOutlet weak var viewPink: UIView!
    @IBOutlet weak var tituloField: UITextField!
    @IBOutlet weak var descView: UITextView!
    var delegate: AddAtividade?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPink.layer.cornerRadius = 5
        descView.text = ""
    }
    
    
    @IBAction func salvar(_ sender: Any) {
        let ativi = Atividades(titulo: tituloField.text!, desc: descView.text!)
        delegate?.addAtividade(atv: ativi)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancelar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
