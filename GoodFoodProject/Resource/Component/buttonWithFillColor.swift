//
//  buttonWithFillColor.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class buttonWithFillColor: UIButton {
    override var isEnabled: Bool {
        didSet {
            self.alpha = isEnabled ? 1.0 : 0.5
            self.setTitleColor(isEnabled ? .white : .lightGray, for: .normal )
        }
    }
    
    //untuk argums teks dalam button
    var titleForButton: String? {
        didSet {
            self.setTitle(titleForButton, for: .normal)
        }
    }
    
    //argums untuk warna teks dalam button
    var fontColor: UIColor? {
        didSet {
            if let colorFont = fontColor {
                self.setTitleColor( colorFont, for: .normal)
                self.setTitleColor(colorFont.withAlphaComponent(0.5), for: .disabled)
                self.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)
            }
        }
    }
    
    //argums untuk warna button
    var buttonColor: UIColor? {
        didSet {
            self.backgroundColor = buttonColor
        }
    }
    
    //argums untuk tinggi dan lebar
    var widthButton: CGFloat = 0 {
        didSet {
            self.frame.size.width = widthButton
        }
    }
    var heightButton: CGFloat = 0{
        didSet {
            self.frame.size.height = heightButton
        }
    }
    
    private func setupView() {
        self.layer.cornerRadius = 8
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        setupView()
    }
}
