

import UIKit

class dataViewController: UIViewController {
    var name:String? = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let tempName = name{
            welcomeLabekl.text = "Bem Vindo, \(tempName)!"
    }
}
    
    @IBOutlet weak var welcomeLabekl: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC")
        self.present(mainVC, animated: true, completion: nil)
        
        
        
        
        
        
    }
    
    
    
}
