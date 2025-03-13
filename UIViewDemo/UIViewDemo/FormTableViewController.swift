//
//  FormTableViewController.swift
//  UIViewDemo
//
//  Created by mwpark on 3/13/25.
//

import UIKit

class FormTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.tableView.separatorColor = .black
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }
    
    // 섹션 하나에 들어가는 row 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        case 3:
            return 3
        default:
            return 2
        }
    }
    
    // cell을 만들어준다.
    // 해당 코드를 주석해제해서 직접 생성해줘야한다.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 이전 코드는 재사용 코드를 불러오는 코드였으므로(해당 코드가 없음)
        // 생성자로 만들어준다.
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        // 셀 설정(설정을 셀에 삽입)
        var config = UIListContentConfiguration.subtitleCell()
        config.text = "Section: \(indexPath.section), Row: \(indexPath.row)"
        cell.contentConfiguration = config
//        cell.backgroundColor = .systemGray
        
        return cell
    }
    
    // 각 섹션의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 200
        default:
            return 50
        }
        
    }
    
}

#Preview {
    FormTableViewController(style: .insetGrouped)
}
