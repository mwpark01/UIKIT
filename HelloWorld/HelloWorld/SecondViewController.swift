//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by mwpark on 3/12/25.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        // 배경색을 노란색으로 변경
        self.view.backgroundColor = .yellow
        
        let label = UILabel()
        label.text = "Second View"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 30)
        label.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 40)
        self.view.addSubview(label)
    }
}
