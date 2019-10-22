
import UIKit

class loginViewController: UIViewController {
    @IBOutlet weak var nomeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func connectButton(_ sender: Any) {
        self.performSegue(withIdentifier: "loginToData", sender: self)

    }
  
          
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "loginToData" {
        let vc = segue.destination as! dataViewController
       vc.name = nomeTextField.text
    }
}

}
