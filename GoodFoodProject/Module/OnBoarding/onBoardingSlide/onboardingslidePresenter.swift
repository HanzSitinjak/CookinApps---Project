//
//  onboardingslidePresenter.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class onboardingslidePresenter {
    var view: onboardingslideViewProtocol!
    var router: onboardingslideRouterProtocol!
    var interactor: onboardingslideInteractorProtocol!
    
    var slides: [OnBoardingModel] = []
    
    private func _fetchDataForOnboarding(completion: @escaping (Result<[OnBoardingModel], Error>) -> Void) {
        interactor.fetchingDataOnboarding { [weak self] (response, error) in
            guard let self = self else { return }
            if let error = error {
                completion(.failure(error))
                return
            }
            if let slides = response {
                completion(.success(slides))
            } else {
                print("Error fetching data!")
            }
        }
    }
}

extension onboardingslidePresenter: onboardingslidePresenterProtocol {
    func didNavigateToOnboardingFinal() {
        router.navigateToOnboardingFinal()
    }
    
    func didFetchDataOnboarding() {
        self._fetchDataForOnboarding { [weak self] result in
            switch result {
            case .success(let slides):
                self?.slides = slides
                DispatchQueue.main.async {
                    self?.view.updateOnboardingData(with: slides)
                }

            case .failure(let err):
                print("Gagal mengambil data: \(err)")
            }
        }
    }
}
