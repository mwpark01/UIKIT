//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by mwpark on 3/12/25.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func didDismissSecondViewController(message: String)
}

class SecondViewController: UIViewController {
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("02 SecondViewController.viewWillAppear()")
      }

      override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print("03 SecondViewController.viewIsAppearing()")
      }

      override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("04 SecondViewController.viewDidAppear()")
      }

      override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("05 SecondViewController.viewWillDisappear()")
      }

      override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("06 SecondViewController.viewDidDisappear()")

        // SecondViewController가 사라질 때 delegate에게 메시지를 전달
        delegate?.didDismissSecondViewController(message: "Bye!")
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
