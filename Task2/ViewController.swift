//
//  ViewController.swift
//  Task2
//
//  Created by 小川卓馬 on 2020/08/27.
//  Copyright © 2020 小川卓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numTextField1: UITextField!
    @IBOutlet weak var numTextField2: UITextField!
    @IBOutlet weak var answerLabel: UILabel!//単語は省略しないことが多い
    @IBOutlet weak var selectSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numTextField1.keyboardType = .numberPad
        numTextField2.keyboardType = .numberPad
        
    }
    
    
    @IBAction func calculation(_ sender: Any) {
//        var ans = 0.0
        
        let answer: Double
        
        let first = Double(numTextField1.text!) ?? 0.0
        let second = Double(numTextField2.text!) ?? 0.0
        
        switch selectSegmentedControl.selectedSegmentIndex {
        case 0:
            answer = first + second
        case 1:
            answer = first - second
        case 2:
            answer = first * second
        case 3:
            if second == 0.0 {
                answerLabel.text = "割る数には0以外を入力して下さい"
                return
            }
            answer = first / second
        default:
//            break // breakだと下の行が実行されてエラーになる。answerに何も入っていない。
            return
        }
        
        answerLabel.text = String(answer)
        
    }

}

