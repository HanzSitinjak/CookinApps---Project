//
//  buttonOnlyOutlineColor.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class buttonOnlyOutlineColor: UIButton {
    override var isEnabled: Bool {
        didSet {
            self.alpha = isEnabled ? 1.0 : 0.5
            self.setTitleColor(isEnabled ? .white : .lightGray, for: .normal)
        }
    }
    
    var fontColor:UIColor? {
        didSet {
            if let fontColor = fontColor {
                self.setTitleColor(fontColor, for: .normal)
                self.setTitleColor(fontColor.withAlphaComponent(0.5), for: .disabled)
                self.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            }
        }
    }
    
    var borderColor: UIColor? {
        didSet {
            guard let borderColor = borderColor else { return }
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    var borderRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = borderRadius
            self.layer.masksToBounds = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
