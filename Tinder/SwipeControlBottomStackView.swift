//
//  HomeControlsBottomStackView.swift
//  Tinder
//
//  Created by Owen Henley on 12/27/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class SwipeControlBottomStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    fileprivate func setupView() {
        setHeight(as: 88)
        
        let subviews = [Icon.Refresh, Icon.Nope, Icon.SuperLike, Icon.Like, Icon.Boost].map { (image) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            button.contentMode = .scaleAspectFit
            return button
        }
        
        subviews.forEach { (view) in addArrangedSubview(view) }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
