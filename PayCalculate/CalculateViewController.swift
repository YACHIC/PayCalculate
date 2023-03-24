//
//  CalculateViewController.swift
//  PayCalculate
//
//  Created by apple on 2023/3/24.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var TotalView: UIView!
    @IBOutlet weak var tipText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        
        if let priceT = priceText.text,
           let tipT = tipText.text,
           let price = Double(priceT),
           let tip = Double (tipT){
            
            let total = price * (100 + tip)/100
            totalLabel.text = String(format: "%.2f",total)

            
            
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
