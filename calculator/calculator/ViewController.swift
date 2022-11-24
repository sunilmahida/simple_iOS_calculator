//
//  ViewController.swift
//  calculator
//
//  Created by Sunil Mahida on 23/11/22.
//

import UIKit

var a = 0
var b = 0
var c = 0

class ViewController: UIViewController {

    
    @IBOutlet weak var lbl_calc: UILabel!
    
    @IBOutlet weak var txt_v1: UITextField!
    
    @IBOutlet weak var txt_v2: UITextField!
    
    @IBOutlet weak var lbl_answer: UILabel!
    
    @IBOutlet weak var btn_plus: UIButton!

    @IBOutlet weak var btn_minus: UIButton!
    
    @IBOutlet weak var btn_mul: UIButton!
    
    @IBOutlet weak var btn_div: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func main_swtch(_ sender: UISwitch)
    {
        if sender.isOn
        {
            lbl_answer.isHidden=true
            btn_mul.isHidden=true
            btn_plus.isHidden=true
            btn_div.isHidden=true
            btn_minus.isHidden=true
        }
        else
        {
            lbl_answer.isHidden=false
            btn_mul.isHidden=false
            btn_plus.isHidden=false
            btn_minus.isHidden=false
            btn_div.isHidden=false
        }
    }
    
    @IBAction func btn_mul(_ sender: Any)
    {
        a = Int((txt_v1.text)!)!
        b = Int((txt_v2.text)!)!
        c = a*b
        
        lbl_answer.text=String(Int(exactly: c)!)
    }
    @IBAction func btn_plus(_ sender: Any)
    {
        a = Int((txt_v1.text)!)!
        b = Int((txt_v2.text)!)!
        c = a+b
        
        lbl_answer.text=String(Int(exactly: c)!)
    }
    @IBAction func btn_div(_ sender: Any)
    {
        a = Int((txt_v1.text)!)!
        b = Int((txt_v2.text)!)!
        c = a/b
        
        lbl_answer.text=String(Int(exactly: c)!)
    }
    @IBAction func btn_minus(_ sender: Any)
    {
        a = Int((txt_v1.text)!)!
        b = Int((txt_v2.text)!)!
        c = a-b
    
        lbl_answer.text=String(Int(exactly: c)!)
    }
}

