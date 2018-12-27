//
//  DashboardVC.swift
//  Tinder
//
//  Created by Owen Henley on 12/27/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
        // MARK: - Properties
    // setup main views
    let topStackView = TopNavigationStackView()
    let swipeView = UIView()
    let bottomStackView = SwipeControlBottomStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupDummyCard()
    }
    
    fileprivate func setupViews() {
        let mainStackView = UIStackView(arrangedSubviews: [topStackView, swipeView, bottomStackView])
        mainStackView.axis = .vertical
        
        view.addSubview(mainStackView)
        mainStackView.frame = .init(x: 0, y: 0, width: 300, height: 200)
        mainStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.layoutMargins = .init(top: 22, left: 16, bottom: 22, right: 16)
        mainStackView.bringSubviewToFront(swipeView)
    }
    
    // local version of the cards
    fileprivate func setupDummyCard() {
        let swipeCardView = CardView(frame: .zero)
        swipeView.addSubview(swipeCardView)
        swipeCardView.fillSuperview()
    }
    
    
    
}
