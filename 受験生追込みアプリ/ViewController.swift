//
//  ViewController.swift
//  受験生追込みアプリ
//
//  Created by ドコモ on 2017/02/26.
//  Copyright © 2017年 Keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //変数を準備し初期値を入力する
    var num:Double = 0
    var num2:Double = 0
//   var testNum:Double = 0
    //データを保存するインスタンス作成
    var testNum2 = UserDefaults.standard
    var targetTime = UserDefaults.standard
    
    //labelを準備する
    @IBOutlet weak var todayStudiedTime_label: UILabel!
    @IBOutlet weak var studiedTime_label: UILabel!
    
    //初期値入力用フィールドを入力する
    @IBOutlet weak var imputTarget: UITextField!
    @IBOutlet weak var target: UILabel!
    @IBAction func enter(_ sender: UIButton) {
//    let target = Int(imputTarget.text!)
    target.text = String(imputTarget.text!)

    }

    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    //キー"testNum"にtestNum2の値(Double)を文字列（String）に変換して読み込み格納。
    //読み込んだ値をstudiedTime_label.textに表示
    studiedTime_label.text = String(testNum2.double(forKey: "testNum"))
   
//    if let targetText = targetTime.string(forKey: "targetText") {}
    target.text = targetTime.string(forKey: "targetText")
        
    }

    //勉強した時間を入力し、その合計時間を出力する
    @IBAction func studyTimeButton_pushed(_ sender: UIButton) {
        
        //todayStudiedTime_labelに数値ボタンのタイトル（＝数値）を表示
        todayStudiedTime_label.text! = sender.titleLabel!.text!
        
        //num（:Double）に数値ボタンの数値を加算
        if Double(todayStudiedTime_label.text!) != nil {
        num += Double(Double(todayStudiedTime_label.text!)!)
        
        //testNum2（:Double）に数値ボタンの数値を加算
        if Double(todayStudiedTime_label.text!) != nil {
        num2 += Double(Double(todayStudiedTime_label.text!)!)
            }
        //todayStudiedTime_labelにnum(:String)を表示
        todayStudiedTime_label.text = String( num)

        //StudiedTime_labelにnum(:String)を表示
            studiedTime_label.text = String(num2)

//        testNum = Double(Double(studiedTime_label.text!)!)
// print(testNum)
//        studiedTime_label.text = String(testNum)
     
     //testNumの値をtestNum2として保存
     testNum2.set(num2, forKey:"testNum")
     targetTime.set(target.text, forKey:"targetText")
     
     //testNum2を同期
     testNum2.synchronize()
     targetTime.synchronize()
 print(testNum2)
            
  
         }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }


}

