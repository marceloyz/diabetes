//
//  PopUpVC.swift
//  diabetaXD
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        view.isOpaque = false
    }
    
    
    @IBAction func DismissPopUp(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func Cancel(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    @IBAction func Done(_ sender: UIButton) {
    }
    
    
    }

 



