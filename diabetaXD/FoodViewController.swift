//
//  FoodViewController.swift
//  diabetaXD
//
//  Created by Aluno Mack on 10/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activ: UIActivityIndicatorView!
    
    var foods:[Food] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            do {
                let data = try Data(contentsOf: Bundle.main.url(forResource: "TACO", withExtension: "json")!)
                foods = try JSONDecoder().decode([Food].self, from: data)
                tableView.reloadData()
            } catch { print(error) }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return foods.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "FoodViewCell") as? FoodViewCell{
                cell.foodName.text = foods[indexPath.row].foodName
                cell.carbo.text = "\(foods[indexPath.row].carbo ?? 000.00)"
                return cell
            }
            return UITableViewCell()
        // Do any additional setup after loading the view.
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
}

