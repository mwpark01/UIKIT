//
//  ViewController.swift
//  NavigationDemo
//
//  Created by mwpark on 3/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "네비게이션 타이틀"
        
        self.navigationController?.navigationBar.barStyle = .default
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barTintColor = .systemBlue
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // 네비게이션 큰 타이틀 설정
        // 요즘 스타일의 네비게이션 타이틀임
        //        self.navigationController?.navigationBar.prefersLargeTitles = true
        //        self.navigationController?.navigationBar.backgroundColor = .systemBlue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let VC = UIViewController()
        VC.view.backgroundColor = .systemYellow
        VC.title = "서브 타이틀"
        self.navigationController?.pushViewController(VC, animated: true)
    }
}
#Preview{
    UINavigationController(rootViewController: ViewController())
}
