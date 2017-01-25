//
//  ViewController.swift
//  Calculater_MuMu
//
//  Created by gai lowvapong on 1/22/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var input1_txt: UITextField!
    @IBOutlet weak var input2_txt: UITextField!
    @IBOutlet weak var result_txt: UILabel!
    
    @IBOutlet weak var plus_btn: UIButton!

    @IBOutlet weak var minus_btn: UIButton!
    @IBOutlet weak var mult_btn: UIButton!
    @IBOutlet weak var div_btn: UIButton!

    var a : Double!
    var b : Double!
    @IBAction func Onplus_enter(_ sender: Any) {
       Getvalue()
        result_txt.text = String(a+b)
        
    }
    
    @IBAction func Onminus_enter(_ sender: Any) {
        Getvalue()
        
        result_txt.text = String(a-b)
    }

    @IBAction func Onmult_enter(_ sender: Any) {
        Getvalue()
        
        result_txt.text = String(a*b)
    }
    
    @IBAction func Ondiv_enter(_ sender: Any) {
        Getvalue()
        
        result_txt.text = String(a/b)
    }
    
    func Getvalue() -> Void {
         a = Double(input1_txt.text!)
         b = Double(input2_txt.text!)
        if(a == nil){ a = 0;}
        if(b == nil){ b = 0;}
    }
    
}

