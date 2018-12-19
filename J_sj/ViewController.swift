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
    var temp1 : Double = 0
    var temp2 : Double = 0
    var temp3 : Double = 0
    var example : Int = 0
    var example1 : Int = 0
    var per : Double = 0
    var flag : Int = 0
    var flag1 : Int = 0
    var flag2 : Int = 0
    var flag3 : Int = 0
    var count : Int = 0
    
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
    @IBAction func fushu(_ sender: Any) {
        result.text = result.text! + "-"
    }
    @IBAction func persent(_ sender: Any) {
        per = Double(result.text!)! / 100
        result.text = "\(per)"
    }
    @IBAction func AC(_ sender: Any) {
        //result.text = "0"
        result.text = ""
        flag = 0
        flag1 = 0
        flag2 = 0
        flag3 = 0
        example = 0
        example1 = 0
        count = 0
        temp3 = 0
    }
    func no(temp1: Double) -> Double {
        temp2 = temp1 + Double(result.text!)!
        return temp2
    }
    func no1(temp1: Double) -> Double {
        temp2 = temp1 - Double(result.text!)!
        return temp2
    }
    func no2(temp1: Double) -> Double {
        temp2 = temp1 * Double(result.text!)!
        return temp2
    }
    func no3(temp1: Double) -> Double {
        temp2 = temp1 / Double(result.text!)!
        return temp2
    }
    @IBAction func add(_ sender: Any) {
        if (example == 2)
        {
            temp = no1(temp1: temp)
            flag = 0
        }
        if (example == 3)
        {
            temp = no2(temp1: temp)
            flag = 0
        }
        if (example == 4)
        {
            temp = no3(temp1: temp)
            flag = 0
        }
        while (flag == 0 ) {
            if (temp == 0 && count == 0)
            {
                temp = Double(result.text!)!
            }
            result.text = ""
            flag = flag + 1
        }
        while(flag == 2){
            temp = no(temp1: temp)
            result.text = ""
            flag = flag - 1
        }
        flag = flag + 1
        example = 1
        count = count + 1
    }
    @IBAction func del(_ sender: Any) {
        if (example == 1)
        {
            temp = no(temp1: temp)
            flag1 = 0
        }
        if (example == 3)
        {
            temp = no2(temp1: temp)
            flag1 = 0
        }
        if (example == 4)
        {
            temp = no3(temp1: temp)
            flag1 = 0
        }
        while (flag1 == 0 ) {
            if (temp == 0 && count == 0)
            {
                temp = Double(result.text!)!
            }
            result.text = ""
            flag1 = flag1 + 1
        }
        while(flag1 == 2){
            temp = no1(temp1: temp)
            result.text = ""
            flag1 = flag1 - 1
        }
        flag1 = flag1 + 1
        example = 2
        count = count + 1
    }
    @IBAction func mul(_ sender: Any) {
        if (example == 1)
        {
            if(example1 == 0)
            {
                temp3 = temp + temp3
            }
            if(example1 == 1)
            {
                temp3 = temp + temp3
            }
            if(example1 == 2)
            {
                temp3 = temp3 - temp
            }
            temp = Double(result.text!)!
            //temp = no(temp1: temp)
            flag2 = 0
            example1 = example
        }
        if (example == 2)
        {
            if(example1 == 0)
            {
                temp3 = temp + temp3
            }
            if(example1 == 1)
            {
                temp3 = temp + temp3
            }
            if(example1 == 2)
            {
                temp3 = temp3 - temp
            }
            temp = Double(result.text!)!
            //temp = no1(temp1: temp)
            flag2 = 0
            example1 = example
        }
        if (example == 4)
        {
            temp = no3(temp1: temp)
            flag2 = 0
        }
        while (flag2 == 0 ) {
            if (temp == 0 && count == 0)
            {
                temp = Double(result.text!)!
            }
            result.text = ""
            flag2 = flag2 + 1
        }
        while(flag2 == 2){
            temp = no2(temp1: temp)
            result.text = ""
            flag2 = flag2 - 1
        }
        flag2 = flag2 + 1
        example = 3
        count = count + 1
        
    }
    @IBAction func div(_ sender: Any) {
        if (example == 1)
        {
            if(example1 == 0)
            {
                temp3 = temp + temp3
            }
            if(example1 == 1)
            {
                temp3 = temp + temp3
            }
            if(example1 == 2)
            {
                temp3 = temp3 - temp
            }
            temp = Double(result.text!)!
            //temp = no(temp1: temp)
            flag2 = 0
            example1 = example
        }
        if (example == 2)
        {
            if(example1 == 0)
            {
                temp3 = temp + temp3
            }
            if(example1 == 1)
            {
                temp3 = temp + temp3
            }
            if(example1 == 2)
            {
                temp3 = temp3 - temp
            }
            temp = Double(result.text!)!
            //temp = no1(temp1: temp)
            flag2 = 0
            example1 = example
        }
        if (example == 3)
        {
            temp = no2(temp1: temp)
            flag3 = 0
        }
        while (flag3 == 0 ) {
            if (temp == 0 && count == 0)
            {
                temp = Double(result.text!)!
            }
            result.text = ""
            flag3 = flag3 + 1
        }
        while(flag3 == 2){
            temp = no(temp1: temp)
            result.text = ""
            flag3 = flag3 - 1
        }
        flag3 = flag3 + 1
        example = 4
        count = count + 1
        
    }
    @IBAction func show(_ sender: Any) {
        if (example == 1)
        {
            if(example1 == 1)
            {
                temp = temp + Double(result.text!)! + temp3
            }
            if(example1 == 2)
            {
                temp = temp3 - (temp + Double(result.text!)!)
            }
            if(example1 == 0)
            {
                temp = Double(result.text!)! + temp
            }
            result.text = "\(temp)"
            temp = 0
        }
        if (example == 2)
        {
            if(example1 == 1)
            {
                temp = temp - Double(result.text!)! + temp3
            }
            if(example1 == 2)
            {
                temp = temp3 - (temp - Double(result.text!)!)
            }
            if(example1 == 0)
            {
                temp = temp - Double(result.text!)!
            }
            result.text = "\(temp)"
            temp = 0
        }
        if (example == 3)
        {
            if(example1 == 1)
            {
                temp = temp * Double(result.text!)! + temp3
            }
            if(example1 == 2)
            {
                temp = temp3 - (temp * Double(result.text!)!)
            }
            if(example1 == 0)
            {
                temp = temp * Double(result.text!)!
            }
            result.text = "\(temp)"
            temp = 0
        }
        if (example == 4)
        {
            if(example1 == 1)
            {
                temp = temp / Double(result.text!)! + temp3
            }
            if(example1 == 2)
            {
                temp = temp3 - (temp / Double(result.text!)!)
            }
            if(example1 == 0)
            {
                temp = temp / Double(result.text!)!
            }
            result.text = "\(temp)"
            temp = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

