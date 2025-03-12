//
//  ViewController.swift
//  HelloWorld
//
//  Created by mwpark on 3/12/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("1 VidwController.viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2 VidwController.viewWillAppear()")
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print("3 VidwController.viewIsAppearing()")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("4 VidwController.viewDidAppear()")
    }
    
}

