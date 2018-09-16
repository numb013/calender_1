//
//  OriginalViewController.swift
//  Calendar
//
//  Created by user on 2018/09/12.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class OriginalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var text = ""

    
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
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = UITableViewCell()

print(text)
        
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "法要設定"
        case 1:
            cell.textLabel?.text = "子供のお祝い"
        case 2:
            cell.textLabel?.text = "ペットの誕生日"
        case 3:
            cell.textLabel?.text = "神式の霊祭"
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
