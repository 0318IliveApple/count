//
//  ViewController.swift
//  count
//
//  Created by 中嶋裕也 on 2018/03/03.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var number:Int = 0
    @IBOutlet var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(){
        number += 1
        label.text = String(number)
        if number>10 {
            label.backgroundColor = UIColor.red
        }else if number<0 {
            label.backgroundColor = UIColor.blue
        }else{
            label.backgroundColor = UIColor.white
        }

    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        
        if number<0 {
            label.backgroundColor = UIColor.blue
        }else if number>10 {
            label.backgroundColor = UIColor.red
        }else{
            label.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.backgroundColor = UIColor.white
    }
    
    
    @IBAction func stepperp(){
        number += 1
        label.text = String(number)
    }
}

