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
        
        let router = onboardingslideRouter()
        let presenter = onboardingslidePresenter()
        let interactor = onboardingslideInteractor()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        view?.presenter = presenter
        router.viewController = view
        
        return view ?? UIViewController()
    }
    
    private func _toOnBoardingFinal() {
        viewController?.navigationController?.pushViewController(onboardingfinalRouter.createModule(), animated: true)
    }
}


extension onboardingslideRouter: onboardingslideRouterProtocol {
    func navigateToOnboardingFinal() {
        self._toOnBoardingFinal()
    }
}
