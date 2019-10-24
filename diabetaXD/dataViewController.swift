//
//  loginViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 11/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import CoreData

class dataViewController: UIViewController {
    var people: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }
    
    @IBOutlet weak var welcomeLabekl: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC")
        self.present(mainVC, animated: true, completion: nil)
        
       
    }
    
    @IBOutlet weak var unAdd: UITextField!
    @IBOutlet weak var grAdd: UITextField!
    
    @IBAction func prosseguirButton(_ sender: UIButton) {
        let varRazao1 = unAdd.text!
        let varRazao2 = grAdd.text
        
        save(unidade: varRazao1, grama: varRazao2!)
    }
    
    
    
    
    
    func save(unidade: String, grama: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let lista = NSEntityDescription.insertNewObject(forEntityName: "ListaNome", into: managedContext)
//        let entity = NSEntityDescription.entity(forEntityName: "ListaNome", in: managedContext)!
//        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        (lista as? ListaNome)?.unidade = int_fast64_t(Int(unidade)!)
        (lista as? ListaNome)?.grama = int_fast64_t(Int(grama)!)
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

