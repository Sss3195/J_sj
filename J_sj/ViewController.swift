//
//  ViewController.swift
//  J_sj
//
//  Created by s20171103195 on 2018/11/2.
//  Copyright © 2018 s20171103195. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UITextField!
    var temp : Double = 0
    var example : Int = 0
    
    @IBAction func buttona(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func buttonb(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func buttonc(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func button4(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func button5(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func button6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func button7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func button8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func button9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func button0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func dot(_ sender: Any) {
        result.text = result.text! + "."
        example = 5
    }
    @IBAction func AC(_ sender: Any) {
        result.text = ""
    }
    @IBAction func add(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        example = 1
    }
    @IBAction func del(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        example = 2
    }
    @IBAction func mul(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        example = 3

    }
    @IBAction func div(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        example = 4

    }
    @IBAction func show(_ sender: Any) {
        if (example == 1)
        {
            temp = Double(result.text!)! + temp
            result.text = "\(temp)"
        }
        if (example == 2)
        {
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
        }
        if (example == 3)
        {
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
        }
        if (example == 4)
        {
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
        }
        if (example == 5)
        {
            //temp = Double(result.text!)! / 10
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

