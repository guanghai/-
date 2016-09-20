//
//  MainNavgationController.swift
//  微博
//
//  Created by LGH on 16/8/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class MainNavgationController: UINavigationController {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        

        if childViewControllers.count > 0 {

        viewController.hidesBottomBarWhenPushed = true

            if let vc = viewController as? BaseViewController{
                
                var title = "返回"
                if childViewControllers.count == 1 {
                    
                    title = navigationItem.title ?? "返回"
                }
                
                vc.navItem.leftBarButtonItem = UIBarButtonItem(title: title, target: self, action: #selector(back), isBack: true)
            }
            

        
       }

        super.pushViewController(viewController, animated: animated)
        

    }
    
    @objc private func back()  {
        
        popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isHidden = true
        
    }

}
