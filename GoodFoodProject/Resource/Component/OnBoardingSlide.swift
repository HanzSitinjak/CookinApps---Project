//
//  OnBoardingSlide.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 21/11/24.
//

import UIKit

class OnBoardingSlide: UICollectionViewCell {
    @IBOutlet weak var subTitleOnboarding: UILabel!
    @IBOutlet weak var nameOfApp: UILabel!
    
    func configure(with slide: OnBoardingModel) {
        nameOfApp.text = slide.nameOfApps
        subTitleOnboarding.text = slide.subtitleOnboarding
        self.backgroundView = UIImageView(image: UIImage(named: slide.imgOnBoarding))
        self.backgroundView?.contentMode = .scaleAspectFill
    }
}
