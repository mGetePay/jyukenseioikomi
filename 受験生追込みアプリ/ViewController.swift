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
    var testNum:Double = 0
//    var testNum2:Double = 0
//    let defaults = UserDefaults.standard
    var testNum2 = UserDefaults.standard

    
    //labelを準備
    @IBOutlet weak var todayStudiedTime_label: UILabel!
    @IBOutlet weak var studiedTime_label: UILabel!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    //一旦各labelに空文字を入力
    todayStudiedTime_label.text = ""
        
//    studiedTime_label.text = ""
        
    //文字列が保存されている場合はラベルに文字列を設定する。
//    if testNum2.string(forKey:"testNum2") != nil {
//    studiedTime_label.text = String(describing: self.testNum2)
    
//    if let testNum2 = testNum2.string(forKey: "testNum2") {
//    studiedTime_label.text = String(testNum2)
//        }

    studiedTime_label.text = testNum2.string(forKey: "testNum2")
       
        
    }

    //勉強した時間を入力し、その合計時間を出力する
    @IBAction func studyTimeButton_pushed(_ sender: UIButton) {
        todayStudiedTime_label.text! = sender.titleLabel!.text!
        if Double(todayStudiedTime_label.text!) != nil {
        num += Double(Double(todayStudiedTime_label.text!)!)
        
        todayStudiedTime_label.text = String( num)
        studiedTime_label.text = String(num)
        testNum = Double(Double(studiedTime_label.text!)!)

 print(testNum)
     testNum2.set(testNum, forKey:"testNum")
     testNum2.synchronize()
 print(testNum2)
            
//            if (testNum2.object(forKey: "Key") != nil) {
//            print("データ有り") }
print(UserDefaults.standard.dictionaryRepresentation())
                
            
            
    
         }
    }

    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

