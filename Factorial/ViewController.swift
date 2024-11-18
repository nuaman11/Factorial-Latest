//
//  ViewController.swift
//  Factorial
//
//  Created by TRAINING on 14/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNum: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnFact(_ sender: UIButton) {
       
        if txtNum.text != "" {
            var fact = 1
            let number = Int(txtNum.text!)!
            for n in 1 ... number{
                if number >= 21{
                    showalert(msg: "Overflow occurred")
                    lblResult.text = ""
                }else{
                    fact = fact * n
                    lblResult.text = String(fact)
                }
            }
           
        }
        else{
            showalert(msg: "Enter a Number")
        }
    }
    
    func showalert(msg:String){
        let alert = UIAlertController(title: "Alert!", message: "\(msg)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}

