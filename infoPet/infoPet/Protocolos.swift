//
//  Protocolos.swift
//  infoPet
//
//  Created by Leticia on 04/10/19.
//  Copyright © 2019 Leticia. All rights reserved.
//

import Foundation
import UIKit

protocol EdicaoPerfil {
    func dadosAlterados(per: Perfil)
}

protocol DadosIniciais {
    func carregaDados(per: Perfil)
}

protocol AddAtividade {
    func addAtividade(atv: Atividades)
}
