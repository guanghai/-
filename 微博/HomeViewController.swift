//
//  HomeViewController.swift
//  微博
//
//  Created by LGH on 16/8/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    
    @objc func barButton(){
        
        let vc = DemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension HomeViewController{
    
    override func setupUI() {
        super.setupUI()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", style: .plain, target: self, action: #selector(barButton))
    }
}
