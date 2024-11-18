//
//  onboardingslideRouter.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class onboardingslideRouter {
    var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "onboardingslideView", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "onboardingslideVC") as? onboardingslideViewController
        let router = splashpageRouter()
        
        router.viewController = view
        
        return view ?? UIViewController()
    }
}

extension onboardingslideRouter: onboardingslideRouterProtocol {
    
}
