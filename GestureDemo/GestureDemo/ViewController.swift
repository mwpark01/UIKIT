//
//  ViewController.swift
//  GestureDemo
//
//  Created by mwpark on 3/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupGesture()
    }
    
    func setupUI() {
        let rectangle = UIView()
        rectangle.backgroundColor = .yellow
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rectangle)
        
        NSLayoutConstraint.activate([
            rectangle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            rectangle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            rectangle.widthAnchor.constraint(equalToConstant: 175),
            rectangle.heightAnchor.constraint(equalToConstant: 125)
        ])
    }
    
    func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        tapGesture.numberOfTapsRequired = 2 // 더블 탭
        tapGesture.numberOfTouchesRequired = 1 // 한 손가락
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTapGesture() {
        print("더블 탭 제스처 인식")
    }
    
}
