//
//  splashpagePresenter.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class splashpagePresenter: splashpagePresenterProtocol {
    weak var view: splashpageViewProtocol?
    var interactor: splashpageInteractorProtocol?
    var router: splashpageRouterProtocol?
    
    func viewDidLoad() {
        interactor?.loadDataVersion { [weak self] data in
            guard let splashdata = data else {
                self?.view?.showError(message: "Gagal mengambil data!")
                return
            }
            self?.view?.displaySplashData(data: splashdata)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self ] in
                if let view = self?.view {
                    self?.router?.navigateToOnBoarding(from: view)
                }
            }
        }
    }
    
    func viewDidAppear() {
        
    }
}
