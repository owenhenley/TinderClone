//
//  TopNavigationStackView.swift
//  Tinder
//
//  Created by Owen Henley on 12/27/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    
    // setup top bar buttons
    let settingsButton = UIButton(type: .system)
    let messagesButton = UIButton(type: .system)
    let logoImage = UIImageView(image: Icon.Logo)

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .equalCentering
        setHeight(as: 73)
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
        settingsButton.setImage(Icon.Profile.withRenderingMode(.alwaysOriginal), for: .normal)
        messagesButton.setImage(Icon.Messages.withRenderingMode(.alwaysOriginal), for: .normal)
        logoImage.contentMode = .scaleAspectFit
        
        [settingsButton, logoImage, messagesButton].forEach { (view) in
            addArrangedSubview(view)
        }
    }

        required init(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}

