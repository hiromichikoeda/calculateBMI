//
//  ViewController.swift
//  calculateBMI
//
//  Created by Hiromichi Koeda on 2020/01/29.
//  Copyright © 2020 Hiromichi Koeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var bmiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.height.keyboardType = UIKeyboardType.decimalPad
        self.weight.keyboardType = UIKeyboardType.decimalPad


    }

    @IBAction func button(_ sender: Any) {
        let dheight = Double(height.text!)//！はオプショナル型
        let dweight = Double(weight.text!)
        let dheight2 = dheight! * dheight!//nilの可能性があると！が必要？
        let bmi = dweight! / dheight2
        let bmiFloor = floor(bmi*100)/100// 3.14（小数第3位で切り捨て）
        print("bmiFloor")
        bmiText.text = "あなたのBMIは" + String(bmiFloor) + "です。"
        
    }
    
}

