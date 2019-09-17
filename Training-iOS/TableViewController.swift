//
//  TableViewController.swift
//  Training-iOS
//
//  Created by shouta_tarukawa on 2019/09/09.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //テーブルセルに表示する文字列
    let list = ["研修1","研修2","研修3"]
    
    @IBOutlet var searchTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var tableView: UITableView!
    //セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
        
    }
    
    
    //セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = list[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "NextView") as! ViewController
        self.navigationController?.pushViewController(ViewController, animated: true)
    }
    
    @IBAction func searchButton(_ sender: Any) {
    }
    
}
