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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPink.layer.cornerRadius = 5
        descView.text = ""
    }
    
    
    @IBAction func salvar(_ sender: Any) {
    }
    
    
    @IBAction func cancelar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
