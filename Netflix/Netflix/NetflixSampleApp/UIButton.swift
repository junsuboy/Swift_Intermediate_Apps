//
//  UIButton.swift
//  Netflix
//
//  Created by Junsu Jang on 2022/04/25.
//

import UIKit

extension UIButton {
    func adjustVerticalLayout(_ spacing: CGFloat = 0) {
        let imageSize = self.imageView?.frame.size ?? .zero
        let titleLabelSzie = self.titleLabel?.frame.size ?? .zero
        
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(imageSize.height + spacing), right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: -(titleLabelSzie.height + spacing), left: 0, bottom: 0, right: -titleLabelSzie.width)
    }
}
