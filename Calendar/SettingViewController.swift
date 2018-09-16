//
//  SettingViewController.swift
//  Calendar
//
//  Created by user on 2018/09/12.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var text = ""
    var setteing_status = ""
    var original_setting = ["法要設定", "子供のお祝い", "ペットの誕生日", "神式の霊祭"]
    var repeat_setting = ["なし", "毎日", "毎週", "2週間", "毎月", "毎年"]
    var notice_setting = ["なし", "5分前", "10分前", "15分前", "30分前", "45分前", "1時間前", "1日前"]
    var calendar_setting = ["calender", "自宅", "職場"]
    var color_setting = ["レッド", "ブルー", "グリーン"]
    
    @IBOutlet weak var tableview: UITableView!
    @IBAction func cancel(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        var sectionCount = Int()
        switch setteing_status {
        case "0":
            sectionCount = original_setting.count
        case "1":
            sectionCount = repeat_setting.count
        case "2":
            sectionCount = notice_setting.count
        case "3":
            sectionCount = calendar_setting.count
        case "4":
            sectionCount = color_setting.count
        default: break
            
        }
        return sectionCount
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        print("setteing_status")
        print(setteing_status)
        
        switch setteing_status {
        case "0":
            cell.textLabel?.text = original_setting[indexPath.row]
        case "1":
            cell.textLabel?.text = repeat_setting[indexPath.row]
        case "2":
            cell.textLabel?.text = notice_setting[indexPath.row]
        case "3":
            cell.textLabel?.text = calendar_setting[indexPath.row]
        case "4":
            cell.textLabel?.text = color_setting[indexPath.row]
        default: break
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セッション")
        print(indexPath.section)
        print("ロウ")
        print(indexPath.row)
        
        self.performSegue(withIdentifier: "toOriginalDetail", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
