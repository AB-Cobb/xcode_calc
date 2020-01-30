//
//  ViewController.swift
//  MyCalc
//
//  Created by Tech on 2020-01-23.
//  Copyright © 2020 ab_cobb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var prevNum: Double = 0.0;
    var opperand = "N";
    var displayingAns = false;
    
    @IBOutlet weak var display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "";
        // Do any additional setup after loading the view.
    }
    
    //Operand Buttons
    @IBAction func add(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
        prevNum = get_num();
        opperand = "add";
        display.text = "0";
    }
    @IBAction func sub(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
        prevNum = get_num();
        opperand = "sub";
        display.text = "0";
    }
    @IBAction func multi(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
        prevNum = get_num();
        opperand = "multi";
        display.text = "0";
    }
    @IBAction func div(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
        prevNum = get_num();
        opperand = "div";
        display.text = "0";
    }
    
    
    
    @IBAction func euqal(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
    }
    func calc () {
        if (opperand == "add")
        {
            display.text = (String) (prevNum + get_num());
            opperand = "N";
        }
        if (opperand == "sub")
        {
            display.text = (String) (prevNum - get_num());
            opperand = "N";
        }
        if (opperand == "multi")
        {
            display.text = (String) (prevNum * get_num());
            opperand = "N";
        }
        if (opperand == "div")
        {
            if (get_num() != 0){
                display.text = (String) (prevNum / get_num());
            }
            else{
                display.text = "Error"
            }
            opperand = "N";
        }
        displayingAns = true;
    }
    func get_num() -> Double {
        if (display.text == "" || display.text == "Error"){
            return 0;
        } else {
            return Double( display.text!)!;
        }
    }
    
    @IBAction func clearEntry(_ sender: Any) {
        display.text = "";
    }
    @IBAction func clear(_ sender: Any) {
        display.text = "";
        opperand = "N";
        prevNum = 0;
    }
    
    
    
    
    @IBAction func zero(_ sender: Any) {
        if get_num() != 0{
            display.text = display.text! + "0";
        }
    }
    @IBAction func one(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "1";
            displayingAns = false;
        } else {
            display.text = display.text! + "1";
        }
    }
    @IBAction func two(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "2";
            displayingAns = false;
        } else {
            display.text = display.text! + "2";
        }
    }
    @IBAction func three(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "3";
            displayingAns = false;
        } else {
            display.text = display.text! + "3";
        }
    }
    @IBAction func four(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "4";
            displayingAns = false;
        } else {
            display.text = display.text! + "4";
        }
    }
    @IBAction func five(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "5";
            displayingAns = false;
        } else {
            display.text = display.text! + "5";
        }
    }
    @IBAction func six(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "6";
            displayingAns = false;
        } else {
            display.text = display.text! + "6";
        }
    }
    @IBAction func seven(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "7";
            displayingAns = false;
        } else {
            display.text = display.text! + "7";
        }
    }
    @IBAction func eight(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "8";
            displayingAns = false;
        } else {
            display.text = display.text! + "8";
        }
    }
    @IBAction func nine(_ sender: Any) {
        if (displayingAns || display.text == "0"){
            display.text = "9";
            displayingAns = false;
        } else {
            display.text = display.text! + "9";
        }
    }
    
    @IBAction func decimal(_ sender: Any) {
        if (!(display.text?.contains("."))!){
            if (get_num() == 0){
                display.text = "0."
            } else {
                display.text = display.text! + ".";
            }
        }
    }
}

