//
//  ProfileCell.swift
//  Tinder_App
//
//  Created by Kyle Modina on 4/30/24.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "kelly1")
        
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

