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
    
    @IBOutlet weak var TipView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGif()
        

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
        
        view.endEditing(true)

    }
    
    func addGif(){
        
        let imageView = UIImageView(
            frame: CGRect(x: 0, y: 0, width: 200, height: 200)
        )
        
        imageView.image = UIImage.animatedImageNamed("tip-coin-", duration: 2)
        imageView.contentMode = .scaleAspectFit

        TipView.addSubview(imageView)
        
        
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
