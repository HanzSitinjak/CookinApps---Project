//
//  splashpageView.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class splashpageViewController: UIViewController {
    @IBOutlet var imgLogoApp: UIImageView!
    @IBOutlet var versionDesc: UILabel!
    
    var presenter: splashpagePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    func showComponent() {
        
    }
}

//MARK: extention untuk modul splashView!!
extension splashpageViewController: splashpageViewProtocol {
    func showError(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    func displaySplashData(data: splashpageModel) {
        versionDesc.text = data.versionDesc
        imgLogoApp.image = UIImage(named: data.logoImg)
    }
}
