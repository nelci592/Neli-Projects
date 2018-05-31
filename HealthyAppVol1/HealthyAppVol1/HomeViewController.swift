

import UIKit

class HomeViewController: UIViewController {
  
    
    @IBOutlet weak var weightTextField: UITextField!
    
    
    @IBOutlet weak var resultTextField: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBAction func calculateBtn(_ sender: Any) {
        guard let weightInKG = weightTextField.text,
            let heightInCM = heightTextField.text else {
                return
        }
        let cm = CalculatorBrain(weightInKG: weightInKG, heightInCM: heightInCM)
        let result = cm.calcBmi()
        resultTextField.text = "BMI: \(result)"
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}
