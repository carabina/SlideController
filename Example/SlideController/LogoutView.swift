//
//  BottomBarView.swift
//  PandaDemo
//
//  Created by Evgeny Dedovets on 8/10/17.
//  Copyright © 2017 Panda Systems. All rights reserved.
//

import UIKit

class LogoutView : UIView {
    
    fileprivate let _logOutInBtnWidth : CGFloat = 120
    fileprivate let _logOutBtnHeigh : CGFloat = 32
    
    let logOutBtn = FilledButton()
    
    init() {
        super.init(frame: CGRect.zero)
        backgroundColor = UIColor.yellow
        logOutBtn.setTitle("Log Out", for: UIControlState())
        logOutBtn.clipsToBounds = true
        logOutBtn.layer.cornerRadius = _logOutBtnHeigh / 2
        logOutBtn.translatesAutoresizingMaskIntoConstraints = false
        addSubview(logOutBtn)
        activateLogOutBtnConstraints(view : logOutBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


private typealias Private_LogoutView = LogoutView
private extension Private_LogoutView {
    func activateLogOutBtnConstraints (view : UIView) {
        view.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(_logOutInBtnWidth)
            make.height.equalTo(_logOutBtnHeigh)
        }
    }
    
}
