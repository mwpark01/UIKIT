//
//  SecondViewController.swift
//  NavigationDemo
//
//  Created by mwpark on 3/19/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "두 번째 뷰"
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemBlue
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        // 아이템 색상
        navigationController?.navigationBar.tintColor = .white
    }
}
    #Preview {
        UINavigationController(rootViewController: ViewController())
    }
