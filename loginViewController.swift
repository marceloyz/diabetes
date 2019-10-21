//
//  loginViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 11/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    @IBOutlet weak var nomeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
        
        
       
        // Do any additional setup after loading the view.
    }
   
   
   
  
 
    
   
    
    
    @IBAction func connectButton(_ sender: Any) {
        self.performSegue(withIdentifier: "loginToData", sender: self)
        
    
        
     
        
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
