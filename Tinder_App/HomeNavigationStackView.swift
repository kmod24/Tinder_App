//
//  HomeNavigationStackView.swift
//  Tinder_App
//
//  Created by Kyle Modina on 4/1/24.
//

import UIKit

protocol HomeNavigationStackViewDelegate: class {
    func showSettings()
    func showMessages()
}



class HomeNavigationStackView: UIStackView {
    
    //MARK:  - Properties
    
    weak var delegate : HomeNavigationStackViewDelegate?
    
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let tinderIcon = UIImageView(image: UIImage(named: "app_icon"))
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect){
        super.init(frame: frame )
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        tinderIcon.contentMode = .scaleAspectFit
        
        
        settingsButton.setImage(UIImage(named: "top_left_profile")?.withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(UIImage(named: "top_right_messages")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        
        
        [settingsButton, UIView(), tinderIcon, UIView(),
         messageButton].forEach { view in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
        settingsButton.addTarget(self, action: #selector(handleShowSettings), for: .touchUpInside)
        messageButton.addTarget(self, action: #selector(handleShowMessages), for: .touchUpInside)
    }
    
    
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleShowSettings() {
        delegate?.showSettings()
    }
    
    @objc func handleShowMessages() {
        delegate?.showMessages()
    }
    
}

