//
//  ViewController.swift
//  FormDemo
//
//  Created by mwpark on 3/17/25.
//

import UIKit

class GroupBoxViewController: UIViewController {
    
    var flag = false
    let groupBox = UIView()
    let grouBoxLabel = UILabel()
    let toggle = UISwitch()
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 배경화면 색을 흰색으로 -> 의미 없음.
        view.backgroundColor = .white
        
        setupGroupBox()
    }
    
    func setupGroupBox() {
         groupBox.layer.borderWidth = 1
         groupBox.layer.borderColor = UIColor.lightGray.cgColor
         groupBox.layer.cornerRadius = 8
         groupBox.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(groupBox)
     
         NSLayoutConstraint.activate([
           groupBox.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
           groupBox.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
           groupBox.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           groupBox.heightAnchor.constraint(equalToConstant: 200)
         ])
       }
}

