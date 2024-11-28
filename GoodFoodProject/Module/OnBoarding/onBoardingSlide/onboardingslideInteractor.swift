//
//  onboardingslideInteractor.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class onboardingslideInteractor {
    private func _fetchDataOnboardingView(completion: @escaping ([OnBoardingModel]?, Error?) -> Void) {
        guard let dataView = Bundle.main.url(forResource: "onBoardingViewData", withExtension: "json") else {
            return
        } 
        
        do {
            let data = try Data(contentsOf: dataView)
            let decoder = JSONDecoder()
            let onboardingData = try decoder.decode([OnBoardingModel].self, from: data)
            DispatchQueue.main.async {
                completion(onboardingData, nil)
            }
        } catch {
            print("Gagal mengambil data: \(error.localizedDescription)")
            DispatchQueue.main.async {
                completion(nil, error)
            }
        }
    }
}

extension onboardingslideInteractor: onboardingslideInteractorProtocol {
    func fetchingDataOnboarding(completion: @escaping ([OnBoardingModel]?, Error?) -> Void) {
        return self._fetchDataOnboardingView(completion: completion)
    }
}
