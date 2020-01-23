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
    
    @IBOutlet weak var display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "";
        // Do any additional setup after loading the view.
    }
    @IBAction func add(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
        prevNum = get_num();
        opperand = "add";
        display.text = "";
    }
    @IBAction func euqal(_ sender: Any) {
        if (opperand != "N"){
            calc()
        }
    }
    func calc () {
        if (opperand == "add")
        {
            display.text = (String) (get_num() + prevNum);
            opperand = "N";
        }
        if (opperand == "sub")
        {
            display.text = (String) (get_num() - prevNum);
            opperand = "N";
        }
    }
    func get_num() -> Double {
        if (display.text == ""){
            return 0;
        } else {
            return Double( display.text!)!;
        }
    }
    @IBAction func zero(_ sender: Any) {
        display.text = display.text! + "0";
    }
    @IBAction func one(_ sender: Any) {
        display.text = display.text! + "1";
    }
    @IBAction func two(_ sender: Any) {
        display.text = display.text! + "2";
    }
    @IBAction func three(_ sender: Any) {
        display.text = display.text! + "3";
    }
    @IBAction func four(_ sender: Any) {
        display.text = display.text! + "4";
    }
    @IBAction func five(_ sender: Any) {
        display.text = display.text! + "5";
    }
    @IBAction func six(_ sender: Any) {
        display.text = display.text! + "6";
    }
    @IBAction func seven(_ sender: Any) {
        display.text = display.text! + "7";
    }
    @IBAction func eight(_ sender: Any) {
        display.text = display.text! + "8";
    }
    @IBAction func nine(_ sender: Any) {
        display.text = display.text! + "9";
    }
    
}

