//
//  DemoViewController.swift
//  微博
//
//  Created by LGH on 16/8/21.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class DemoViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cz_random()
        
        title = "第\(navigationController?.childViewControllers.count ?? 0)个"
    
    }
     @objc func nextPage(){
        
        navigationController?.pushViewController(DemoViewController(), animated: true)
    }
}

extension DemoViewController{
    
    override func setupUI(){
        super.setupUI()
        navItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", fontSize: 16, target: self, action: #selector(nextPage))
    
    }
    
}
