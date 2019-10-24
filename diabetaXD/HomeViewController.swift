//
//  HomeViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {

    @IBOutlet weak var gramaLabel: UILabel!
    @IBOutlet weak var unidadeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        var listaListaNome:[ListaNome] = []
        do {
            listaListaNome = try ((managedContext.fetch(ListaNome.fetchRequest()) as? [ListaNome])!)
        } catch {
            //deu erro
        }
        if (listaListaNome.count > 0) {
            let listaNome = listaListaNome[0]
            gramaLabel.text = "\(Int(listaNome.grama))"
            unidadeLabel.text = "\(Int(listaNome.unidade))"
        }
    }
    
    

}
