//
//  ViewController.swift
//  AlanaziA assignment 3
//
//  Created by abdulrahman alanazi on 2/5/19.
//  Copyright © 2019 abdulrahman alanazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var pre : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func enterNumber(_ sender: UIButton) {
        var i:Int = 0
        if let n = resultLabel.text {
            i = Int(n)!
        }
        
        var entered:Int = 0
        if let n = sender.titleLabel?.text {
            entered = Int(n)!
        }
        
        let removeZero:Int! = Int("\(i.description)\(entered.description)")
        self.resultLabel.text = "\(removeZero.description)"
       
    }
    
    @IBAction func addAction(_ sender: Any) {
        // copy what is been in label and store it into pre
        var i:Int = 0
        if let n = resultLabel.text {
            i = Int(n) ?? 0
        }
        self.pre = i
        // reset label to zero
        self.resultLabel.text = "0"
        
    }
    @IBAction func calculate(_ sender: Any) {
        var i = 0
        if let n = resultLabel.text {
            i = Int(n) ?? 0
        }
        let res = i + self.pre
        self.pre = 0
        self.resultLabel.text = "\(res)"
    }
    
    @IBAction func reset(_ sender: Any) {
        self.pre = 0
        self.resultLabel.text = 0.description
    }
}


