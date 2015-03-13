//
//  ViewController.swift
//  calculator
//
//  Created by 小芝 涼太 on 2015/03/10.
//  Copyright (c) 2015年 小芝 涼太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number1:Float = 0,number2:Float = 0,number3 :Float = 0
    var ope:Int = 0
    
    let myLabel : UILabel = UILabel(frame : CGRectMake( 130, 50, 150, 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.cyanColor()
        self.view.addSubview(myLabel)
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(sender: AnyObject){
        bunki(1)
    }
    
    @IBAction func button2(sender: AnyObject){
        bunki(2)
    }
    
    @IBAction func button3(sender: AnyObject){
        bunki(3)
    }
    
    @IBAction func button4(sender: AnyObject){
        bunki(4)
    }
    
    @IBAction func button5(sender: AnyObject){
        bunki(5)
    }
    
    @IBAction func button6(sender: AnyObject){
        bunki(6)
    }
    
    @IBAction func button7(sender: AnyObject){
        bunki(7)
    }
    
    @IBAction func button8(sender: AnyObject){
        bunki(8)
    }
    
    @IBAction func button9(sender: AnyObject){
        bunki(9)
    }
    
    @IBAction func button0(sender: AnyObject){
        bunki(0)
    }
    
    @IBAction func plus(sender: AnyObject){
        ope=1
    }
    @IBAction func minus(sender: AnyObject){
        ope=2
    }
    @IBAction func kakeru(sender: AnyObject){
        ope=3
    }
    @IBAction func waru(sender: AnyObject){
        ope=4
    }
    @IBAction func clear(sender: AnyObject){
        number1=0
        number2=0
        number3=0
        ope=0
        myLabel.text="0"
    }
    @IBAction func equal(sender: AnyObject){
        switch ope{
        case 1:
            number3=number1+number2
        case 2:
            number3=number1-number2
        case 3:
            number3=number1*number2
        case 4:
            number3=number1/number2
        default:
            break
        }
        myLabel.text = "\(number3)"
        number1=number3
        number2=0
    }
    
    func bunki (i:Float){
        if(ope==0){
            number1=number1*10+i
            myLabel.text = "\(number1)"
        }else{
            number2=number2*10+i
            myLabel.text = "\(number2)"
        }
    }

}

