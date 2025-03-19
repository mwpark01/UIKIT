//
//  ViewController.swift
//  TableViewDemo
//
//  Created by mwpark on 3/19/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tableView = UITableView(frame: view.bounds, style: .plain)
        
        // 테이블 뷰의 데이터 소스를 현재 뷰 컨트롤러로 설정
        tableView.dataSource = self
        
        view.addSubview(tableView)
    }
    
    // MARK: - UITableViewDataSource
    // section에 포함된 행의 갯수를 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    // 셀을 생성 및 구성하는 메서드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 재사용 가능한 셀을 가져오는 역할
        // 만약에 셀이 100개라면 100개 모든 셀을 만드는 것이 아니라 성능최적화를 위해서 스크롤할 때 화면에서 사라지는 셀을 재사용한다.
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        cell?.textLabel?.text = "Row \(indexPath.row)"
        return cell!
    }


}

