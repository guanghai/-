//
//  BarbuttonItem+Extension.swift
//  微博
//
//  Created by LGH on 16/9/19.
//  Copyright © 2016年 LGH. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(title: String, fontSize: CGFloat = 16,target: AnyObject?, action: Selector, isBack: Bool = false) {
        
        let btn : UIButton = UIButton.cz_textButton(title, fontSize: fontSize, normalColor: UIColor.darkGray, highlightedColor: UIColor.orange)
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        if isBack == true {
            
            let imageName = "navigationbar_back_withtext"
            btn.setImage(UIImage(named:imageName), for: .normal)
            btn.setImage(UIImage(named:imageName + "_highlighted"), for: .highlighted)
            btn.sizeToFit()
        }
        
        self.init(customView: btn)
    }
    
}

