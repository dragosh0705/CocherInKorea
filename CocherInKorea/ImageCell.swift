//
//  ImageCell.swift
//  CocherInKorea
//
//  Created by 최영우 on 7/13/23.
//

import Foundation
import UIKit

class ImageCollectionViewCell : UICollectionViewCell {
    
    private let imageView : UIImageView = {
        let v = UIImageView()
        v.contentMode = .scaleAspectFit
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder :NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI () {
        self.contentView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func configure(image : String) {
        if let image = UIImage(named: image) {
            imageView.image = image
        }
    }
}
