//
//  PlanInputView.swift
//  Calender
//
//  Created by 高橋良輔 on 2018/09/01.
//  Copyright © 2018年 RainbowApps. All rights reserved.
//

import UIKit

class PlanInputViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var text = ""

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var datePickerBottomMargin: NSLayoutConstraint!
    

    var selectCellPath:IndexPath?

    @IBOutlet weak var tableview: UITableView!

    var cell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self

        self.tableview.register(UINib(nibName: "TextFieldTableViewCell", bundle: nil), forCellReuseIdentifier: "TextFieldTableViewCell")

        self.tableview.register(UINib(nibName: "DatePickerTableViewCell", bundle: nil), forCellReuseIdentifier: "DatePickerTableViewCell")

        self.tableview.register(UINib(nibName: "SelectTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectTableViewCell")

        self.tableview.register(UINib(nibName: "SettingTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingTableViewCell")

        self.tableview.register(UINib(nibName: "MemoTableViewCell", bundle: nil), forCellReuseIdentifier: "MemoTableViewCell")

    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section <= 2 {
            return 2
        } else if section <= 6 {
            return 1
        } else {
            return 1
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 6 {
            return "メモ"
        } else {
            return ""
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()

        if indexPath.section == 0 {
            if indexPath.row == 0 {
                cell = tableview.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            }
        }

        if indexPath.section == 0 {
            if indexPath.row == 1 {
                cell = tableview.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell") as! TextFieldTableViewCell
            }
        }
        
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "DatePickerTableViewCell") as! DatePickerTableViewCell


                  // ここがうまくいかない所
//                cell.startLabel?.text = "開始"
//                cell.startDateLabel.text = text
            }
        }

        if indexPath.section == 1 {
            if indexPath.row == 1 {
                cell = tableView.dequeueReusableCell(withIdentifier: "DatePickerTableViewCell") as! DatePickerTableViewCell
            }
        }

        if indexPath.section == 2 {
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell") as! SettingTableViewCell
                cell.textLabel?.text = "オリジナル設定"
            }
        }

        if indexPath.section == 2 {
            if indexPath.row == 1 {
                cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell") as! SettingTableViewCell
                cell.textLabel?.text = "繰り返し"
            }
        }
        
        if indexPath.section == 3 {
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell") as! SettingTableViewCell
                cell.textLabel?.text = "通知"
            }
        }

        if indexPath.section == 4 {
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell") as! SettingTableViewCell
                cell.textLabel?.text = "カレンダー"
            }
        }

        if indexPath.section == 5 {
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell") as! SettingTableViewCell
                cell.textLabel?.text = "カラー"
            }
        }
        
        if indexPath.section == 6{
            if indexPath.row == 0 {
                cell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell") as! MemoTableViewCell
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 6 {
            if indexPath.row == 0 {
                return 200
            }
        }
        return 50
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セッション")
        print(indexPath.section)
        print("ロウ")
        print(indexPath.row)

        // datePikcer
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                print(indexPath)
//                selectCellPath = indexPath
//                showDatePicker()
            }
        }
        // オリジナル設定
        if indexPath.section == 2 {
            if indexPath.row == 0 {
                let setteing_status = "0"
                self.performSegue(withIdentifier: "toSetting", sender: setteing_status)
            }
        }
        // 繰り返し
        if indexPath.section == 2 {
            if indexPath.row == 1 {
                let setteing_status = "1"
                self.performSegue(withIdentifier: "toSetting", sender: setteing_status)
            }
        }
        // 通知
        if indexPath.section == 3 {
            if indexPath.row == 0 {
                let setteing_status = "2"
                self.performSegue(withIdentifier: "toSetting", sender: setteing_status)
            }
        }
        // カレンダー
        if indexPath.section == 4 {
            if indexPath.row == 0 {
                let setteing_status = "3"
                self.performSegue(withIdentifier: "toSetting", sender: setteing_status)
            }
        }
        // カラー
        if indexPath.section == 5 {
            if indexPath.row == 0 {
                let setteing_status = "4"
                let nextodv = OriginalDetailViewController()
                nextodv.view.backgroundColor = UIColor.blue
                self.present(nextodv, animated: true, completion: nil)
//                self.performSegue(withIdentifier: "toSetting", sender: setteing_status)
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSetting" {
            let vc = segue.destination as! SettingViewController
            vc.setteing_status = sender as! String
        }

    }

    @IBAction func backFromSettingView(segue:UIStoryboardSegue){
        NSLog("SettingViewController#backFromSettingView")
    }
    
    
    @IBAction func input(_ sender: Any) {
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
