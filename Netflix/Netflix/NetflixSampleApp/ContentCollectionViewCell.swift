//
//  ContentCollectionViewCell.swift
//  NetfilxStyleSampleApp
//
//  Created by Junsu Jang on 2022/04/22.
//

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.backgroundColor = .black
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFit
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
