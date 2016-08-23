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
        
        
            
        }

        super.pushViewController(viewController, animated: true)
        
        

    }

}
