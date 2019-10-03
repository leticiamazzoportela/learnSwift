//
//  ViewController.swift
//  buginho
//
//  Created by Leticia on 02/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var controller: DoceViewController?
    
    override func viewDidLoad() {
        controller = self.storyboard?.instantiateViewController(withIdentifier: "doceNav") as? DoceViewController
    }
    
    @IBAction func showCracker() {
        controller?.tipo = 1
        self.navigationController?.pushViewController(controller!, animated: true)
    }
    
    @IBAction func showCookie() {
        controller?.tipo = 2
        self.navigationController?.pushViewController(controller!, animated: true)
    }
    
}

