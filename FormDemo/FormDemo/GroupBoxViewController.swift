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
    let groupBoxLabel = UILabel()
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
        // 그룹박스
        // 뷰에 추가
        groupBox.layer.borderWidth = 1
        groupBox.layer.borderColor = UIColor.lightGray.cgColor
        groupBox.layer.cornerRadius = 8
        groupBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(groupBox)
        
        // 그룹레이블
        // 그룹박스 안에 추가
        groupBoxLabel.text = "그룹박스"
        groupBoxLabel.font = .systemFont(ofSize: 20)
        groupBoxLabel.translatesAutoresizingMaskIntoConstraints = false
        groupBox.addSubview(groupBoxLabel)
        
        // 토클
        toggle.addTarget(self, action: #selector(toggleChanged), for: .valueChanged)
        toggle.translatesAutoresizingMaskIntoConstraints = false
        groupBox.addSubview(toggle)
        
        // 텍스트필드
        textField.borderStyle = .roundedRect
        textField.placeholder = "텍스트 필드"
        textField.translatesAutoresizingMaskIntoConstraints = false
        groupBox.addSubview(textField)
        
        NSLayoutConstraint.activate([
            groupBox.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            groupBox.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            groupBox.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            groupBox.heightAnchor.constraint(equalToConstant: 200),
            
            groupBoxLabel.topAnchor.constraint(equalTo: groupBox.topAnchor, constant: 20),
            groupBoxLabel.leadingAnchor.constraint(equalTo: groupBox.leadingAnchor, constant: 10),
            
            textField.topAnchor.constraint(equalTo: toggle.bottomAnchor, constant: 10),
            textField.leadingAnchor.constraint(equalTo: groupBox.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: groupBox.trailingAnchor, constant: -10),
            textField.bottomAnchor.constraint(equalTo: groupBox.bottomAnchor, constant: -10)
        ])
    }
    @objc func toggleChanged() {
        // 토클이 켜져있는지 여부
        flag = toggle.isOn
        print("flag: \(flag)")
    }
}

