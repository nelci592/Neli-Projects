//
//  WaterViewController.swift
//  HealthyAppVol1
//
//  Created by klant on 4/9/18.
//  Copyright © 2018 klant. All rights reserved.
//

import UIKit


class WaterViewController: UIViewController {
    @IBOutlet weak var cup2: UIImageView!
    @IBOutlet weak var cup4: UIImageView!
    @IBOutlet weak var cup5: UIImageView!
    @IBOutlet weak var cup7: UIImageView!
    @IBOutlet weak var cup6: UIImageView!
    
    @IBOutlet weak var removeoutlet: UIButton!
    
    
    @IBOutlet weak var cup9: UIImageView!
    @IBOutlet weak var cup3: UIImageView!
    @IBOutlet weak var cup1: UIImageView!
    
    @IBOutlet weak var drink: UIButton!
    
    @IBAction func drinkWater(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Add glass?",
                                                message: "Do you want to add 1 glass?",
                                                preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alertController.addAction(UIAlertAction(title: "Add", style: .default) { _ in
            self.addWater()
         _ = self.navigationController?.popToRootViewController(animated: true)
         //   self.performSegue(withIdentifier: .details, sender: nil)
        })
       
        
        present(alertController, animated: true)
        
        
        
        
       
    }
    
    @IBAction func removeglass(_ sender: Any) {
        removeglassfunc()
    }
    
    private func removeglassfunc(){
        cup1.isHidden = true;
        
    }
    
    
    @IBOutlet weak var number: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        cup1.isHidden = true;
        cup2.isHidden = true;
        cup3.isHidden = true;
        cup4.isHidden = true;
        cup5.isHidden = true;
        cup6.isHidden = true;
        cup7.isHidden = true;
        cup9.isHidden = true;
        number.isHidden = true;
        removeoutlet.isHidden = true;
    }

    private func addWater(){
    if (number.text == "0") {
    cup1.isHidden = false;
    number.text="1";
    removeoutlet.isHidden = false
    }
    else if (number.text == "1") {
    cup2.isHidden = false;
    number.text="2";
    removeoutlet.isHidden = false
    }
    
    else if (number.text == "2") {
    cup3.isHidden = false;
    number.text="3";
    }
    else if (number.text == "3") {
    cup4.isHidden = false;
    number.text="4";
    }
    else if (number.text == "4") {
    cup5.isHidden = false;
    number.text="5";
    }
    else if (number.text == "5") {
    cup6.isHidden = false;
    number.text="6";
    }
    else if (number.text == "6") {
    cup7.isHidden = false;
    number.text="7";
    }
    else   {
    cup9.isHidden = false;
    number.isHidden = false;
    number.text="Congratulations you made it";
    }
    
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
  
}
