//
//  splashpageInteractor.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation

class splashpageInteractor: splashpageInteractorProtocol {
    var presenter: splashpagePresenterProtocol?
    
    func loadDataVersion(completion: @escaping (splashpageModel?) -> Void) {
        guard let dataVersionApp = Bundle.main.url(forResource: "splashData", withExtension: "json") else {
            completion(nil)
            return
        }
        
        do {
            let data = try Data(contentsOf: dataVersionApp)
            
            let splashPageModel = try JSONDecoder().decode(splashpageModel.self, from: data)
            completion(splashPageModel)
        } catch {
            print("Gagal mengambil data, yang ada!")
            completion(nil)
        }
    }
}
