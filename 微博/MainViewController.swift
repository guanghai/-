//
//  MainViewController.swift
//  微博
//
//  Created by LGH on 16/8/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubViewController()
   
    }
    
    func composeStatus(){  
        
    }

}

extension MainViewController{
    
      //MARK: - SetupControllers
      func setupSubViewController(){
        
        let dictArray = [["clsName":"HomeViewController","title":"首页","imageNmae":"tabbar_home"],
                         ["clsName":"DiscoverViewController","title":"发现","imageNmae":"tabbar_discover"],
                         ["clsName":"","titile":"","imageName":""],
                         ["clsName":"MessageViewController","title":"消息","imageNmae":"tabbar_message_center"],
                     ["clsName":"ProfileViewController","title":"我","imageNmae":"tabbar_profile"]
        ]
        var vcArray = [UIViewController]()
        for dict in dictArray{
            
            vcArray.append(getViewController(dict: dict))
        }
        self.viewControllers = vcArray
        
        composeButton()
        
    }
    //MARK: - getControllerWithStringDict
   private func getViewController(dict: [String:String]) -> UIViewController{
        
        guard
            let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageNmae"],
            let productName = Bundle.main.infoDictionary?["CFBundleName"] as? String,
            let cls = NSClassFromString(productName + "." + clsName) as? UIViewController.Type 
        else {
            
                return UIViewController()
        }

        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.init(red: 253/255.0, green: 130/255.0, blue: 36/255.0, alpha: 1)], for: .highlighted)
        let nav = MainNavgationController(rootViewController: vc)
        
        return nav
    }
    //MARK: - SetupAddButton
    
   private func composeButton(){
        
        let composeButton = UIButton()
        tabBar.addSubview(composeButton)
        let itemCount = CGFloat(childViewControllers.count)
        let itemWidth = tabBar.bounds.width/itemCount - 1
        composeButton.frame = tabBar.bounds.insetBy(dx: itemWidth*2 , dy: 0)
        composeButton.setImage(UIImage.init(named: "tabbar_compose_icon_add"), for: .normal)
        composeButton.setBackgroundImage(UIImage.init(named: "tabbar_compose_button"), for: .normal)
    composeButton.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
        
    }

}

