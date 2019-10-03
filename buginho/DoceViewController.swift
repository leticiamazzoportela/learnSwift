//
//  DoceViewController.swift
//  buginho
//
//  Created by Leticia on 02/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import UIKit

class DoceViewController : UIViewController {
    
    @IBOutlet weak var src: UIImageView!
    var tipo:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if tipo == 1 {
            src.image = UIImage(named: "bolacha")
        } else if tipo == 2 {
            src.image = UIImage(named: "biscoito")
        }
    }
    
    @IBAction func btnVoltar(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
}
