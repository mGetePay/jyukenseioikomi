//
//  ViewController.swift
//  受験生追込みアプリ
//
//  Created by ドコモ on 2017/02/26.
//  Copyright © 2017年 Keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var num:Double = 0
    
    @IBOutlet weak var todayStudiedTime_label: UILabel!
    @IBOutlet weak var studiedTime_label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       //一旦各labelに空文字を入力
    todayStudiedTime_label.text = ""
    studiedTime_label.text = ""
        
    }

    @IBAction func studyTimeButton_pushed(_ sender: UIButton) {
        todayStudiedTime_label.text! = sender.titleLabel!.text!
        if Double(todayStudiedTime_label.text!) != nil {
        num += Double(Double(todayStudiedTime_label.text!)!)
        
        todayStudiedTime_label.text = String( num)
        studiedTime_label.text = String(num)
 print(num)
        }
    }

    

    
    
    
    
    
    
    
    
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

