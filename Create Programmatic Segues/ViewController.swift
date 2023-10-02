//
//  ViewController.swift
//  Create Programmatic Segues
//
//  Created by 曹家瑋 on 2023/9/27.
//

import UIKit



// MARK: - 使用performSegue
/*
class ViewController: UIViewController {

    // 開關：將決定是否允許跳轉
    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 當綠色按鈕被點擊時呼叫的方法
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        // 檢查開關是否為打開狀態
        if segueSwitch.isOn {
            // 如果開關是打開的，進行帶有指定id的跳轉
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    // 當黃色按鈕被點擊時呼叫的方法
    @IBAction func yellowButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
}
*/


// MARK: - shouldPerformSegue

class ViewController: UIViewController {

    // 開關：將決定是否允許跳轉
    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 在執行轉場前，此方法會被呼叫，用於決定是否允許進行轉場
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // 如果開關是開啟的，則允許轉場；否則，不允許
        return segueSwitch.isOn
    }
    
    
    // 當綠色按鈕被點擊時呼叫的方法
    @IBAction func greenButtonTapped(_ sender: UIButton) {
    }
    
    // 當黃色按鈕被點擊時呼叫的方法
    @IBAction func yellowButtonTapped(_ sender: UIButton) {
    }
    
}
