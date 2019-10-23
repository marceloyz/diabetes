

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
    
    // BOTAO design ----------------------------------- //
    var bottomCustomButton = CustomBotton()
        
    @IBOutlet weak var topCustomButton: CustomBotton!
    
         
         func setupBottomButtonConstraints() {
             view.addSubview(bottomCustomButton)
             bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
             bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
             bottomCustomButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
             bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
             bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
         }
         
         
         func addActionToBottomButton() {
             bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
         }
         
         
         
    @IBAction func topButtonTapped(_ sender: CustomBotton) {
        topCustomButton.shake()
    }
    
      
       
         @objc func bottomButtonTapped() {
             bottomCustomButton.shake()
         }
       
    
    //-----------------------------------------------//
    
}
