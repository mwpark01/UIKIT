//
//  ViewController.swift
//  HelloWorld
//
//  Created by mwpark on 3/12/25.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("1 ViewController.viewDidLoad()")

    setupUI()
  }

  func setupUI() {
      print("7 ViewController.setupUI()")
      let label = UILabel()
      label.text = "Hello, World!"
      label.textAlignment = .center
      label.textColor = .black
      label.font = UIFont.systemFont(ofSize: 24)
      // frame layout(붙여질 뷰의 위치와 크기를 설정)
      //label.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 40)
      // view(메인 뷰)에 라벨(서브 뷰) 추가
      
      // autolayout 설정
      label.translatesAutoresizingMaskIntoConstraints = false
      
      self.view.addSubview(label)
      
      NSLayoutConstraint.activate([
             label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
             label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
             label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
             label.heightAnchor.constraint(equalToConstant: 40)
           ])
    
      // 버튼 추가
      let button = UIButton()
      button.setTitle("Go Second", for: .normal)
      button.setTitleColor(.blue, for: .normal)
      button.frame = CGRect(x: 20, y: 200, width: view.frame.width - 40, height: 40)
      button.addTarget(self, action: #selector(goSecond), for: .touchUpInside)
      
      button.translatesAutoresizingMaskIntoConstraints = false
      
      self.view.addSubview(button)
      
      NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: label.topAnchor, constant: 100),
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 40)
          ])
      // 만약에 addSubview를 여기에다가 실행시킬 경우 에러 발생한다!!
      // button과 label이 먼저 생성되어야 제약조건을 추가할 수 있다!!
  }
    
    func didDismissSecondViewController(message: String) {
          print("SecondViewController에서 전달받은 메시지: \(message)")
      }
    
    @objc func goSecond() {
        let secondVC = SecondViewController()
        secondVC.delegate = self
        self.present(secondVC, animated: true)
    }
}
