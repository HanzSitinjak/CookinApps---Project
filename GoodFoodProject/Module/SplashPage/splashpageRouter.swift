//
//  splashpageRouter.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class splashpageRouter: splashpageRouterProtocol {
    var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "splashpageView", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "splashPageVC") as? splashpageViewController

        let presenter = splashpagePresenter()
        let interactor = splashpageInteractor()
        let router = splashpageRouter()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        router.viewController = view
        
        return view ?? UIViewController()
    }
    
    func navigateToOnBoarding(from view: splashpageViewProtocol) {
        if let toOnboarding = viewController?.navigationController {
            toOnboarding.pushViewController(onboardingslideRouter.createModule(), animated: true)
        } else {
            print ("View controller tidak dapat ditemukan!")
        }
    }
}
