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
        
        setupButton()
    }
    
    func setupButton() {
        let button = UIButton(type: .system)
        button.setTitle("다음 화면으로", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30)
        button.addAction(UIAction { [weak self] _ in
            // 다음 화면으로 이동 세그웨이 실행
            self?.performSegue(withIdentifier: "showDetailSegue", sender: nil)
        }, for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    // segue를 코드로 추가
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue",
           let vc = segue.destination as? SecondViewController {
            vc.title = "다음 화면"
            vc.view.backgroundColor = .systemRed
        }
    }
}
#Preview{
    UINavigationController(rootViewController: ViewController())
}
