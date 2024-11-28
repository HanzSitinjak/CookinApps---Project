//
//  onboardingfinalRouter.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class onboardingfinalRouter: onboardingfinalRouterProtocol {
    var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "onboardingfinalView", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "onBoardingFinalVC") as? onboardingfinalViewController
        let router = onboardingfinalRouter()
        
        router.viewController = view
        return view ?? UIViewController()
    }
    
}
