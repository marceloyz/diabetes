//
//  loginViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 11/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class dataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }
    
    @IBOutlet weak var welcomeLabekl: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC")
        self.present(mainVC, animated: true, completion: nil)
        
       
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
