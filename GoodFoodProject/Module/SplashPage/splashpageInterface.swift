//
//  splashpageInterface.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation

protocol splashpageViewProtocol: AnyObject {
    func showError(message: String)
    func displaySplashData(data: splashpageModel)
}

protocol splashpagePresenterProtocol: AnyObject {
    var view: splashpageViewProtocol? {get set}
    var interactor: splashpageInteractorProtocol? {get set}
    
    func viewDidAppear()
    func viewDidLoad()
}

protocol splashpageRouterProtocol: AnyObject {
    func navigateToOnBoarding( from view: splashpageViewProtocol )
}

protocol splashpageInteractorProtocol: AnyObject {
    func loadDataVersion(completion: @escaping (splashpageModel?) -> Void)
}
