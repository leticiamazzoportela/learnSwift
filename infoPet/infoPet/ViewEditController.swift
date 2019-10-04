//
//  ViewEditController.swift
//  infoPet
//
//  Created by Leticia on 04/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import Foundation
import UIKit

class ViewEditController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var nomeField: UITextField!
    @IBOutlet weak var idadeField: UITextField!
    var generoSelecionado = ""
    var nome = ""
    var idade = ""
    let generos = ["Macho","Fêmea"]
    var delegate: EdicaoPerfil?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeField.text = nome
        idadeField.text = idade
        let index = generos.firstIndex(of: generoSelecionado)
        pickerView.selectRow(index!, inComponent: 0, animated: true)
        pickerView.reloadAllComponents()
    }
    
    @IBAction func salvar(_ sender: Any) {
        let perfil = Perfil(nome: nomeField.text!, idade: idadeField.text!, genero: generoSelecionado)
        delegate?.dadosAlterados(per: perfil)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func cancelar(_ sender: Any) {
        nomeField.text = ""
        idadeField.text = ""
        generoSelecionado = generos[0]
    }
    
}

extension ViewEditController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return generos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        generoSelecionado = generos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return generos[row]
    }
}

extension ViewEditController: DadosIniciais {
    func carregaDados(per: Perfil) {
        nome = per.nome
        idade = per.idade
        generoSelecionado = per.genero
    }
}
