//
//  onboardingslideInterface.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation

protocol onboardingslideViewProtocol: AnyObject {
    func updateOnboardingData(with slides: [OnBoardingModel])
}

protocol onboardingslideRouterProtocol: AnyObject {
    func navigateToOnboardingFinal()
}

protocol onboardingslidePresenterProtocol: AnyObject {
    var slides: [OnBoardingModel] { get }
    
    func didNavigateToOnboardingFinal()
    func didFetchDataOnboarding()
}

protocol onboardingslideInteractorProtocol: AnyObject {
    func fetchingDataOnboarding(completion: @escaping ([OnBoardingModel]?, Error?) -> Void) 
}
