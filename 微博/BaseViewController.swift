//
//  BaseViewController.swift
//  微博
//
//  Created by LGH on 16/8/20.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.cz_screenWidth(), height: 64))
    lazy var navItem = UINavigationItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cz_random()
        setupUI()
        
        
    }
    
    override var title: String?{

        didSet{
            
            navItem.title = title
        }
        
    }
}

extension BaseViewController{
    
    func setupUI(){
        
        view.addSubview(navigationBar)
        navigationBar.items = [navItem]
        navigationBar.barTintColor = UIColor.cz_color(withHex: 0xF6F6F6)
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.darkGray]
        
    }
}
