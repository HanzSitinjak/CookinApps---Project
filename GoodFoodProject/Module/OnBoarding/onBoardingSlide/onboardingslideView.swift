//
//  onboardingslideViewController.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import UIKit

class onboardingslideViewController: UIViewController {
    
    @IBOutlet weak var skipButton: buttonOnlyOutlineColor!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    var presenter: onboardingslidePresenterProtocol?
    private var timer: Timer?

    private var onboardingSlides: [OnBoardingModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        
        presenter?.didFetchDataOnboarding()
        _setupSkipButton()
    }
    
    private func _viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    private func _startAutoSlideTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(autoSlide), userInfo: nil, repeats: true)
    }
    
    private func _setupSkipButton() {
        skipButton.borderWidth = 2.0
        skipButton.borderColor = .white
        skipButton.borderRadius = 8.0
    }
}

extension onboardingslideViewController: onboardingslideViewProtocol {
    func updateOnboardingData(with slides: [OnBoardingModel]) {
        self.onboardingSlides = slides
        self.pageControl.numberOfPages = slides.count
        self.pageControl.currentPage = 0
        self.collectionView.reloadData()
//        collectionView.collectionViewLayout.invalidateLayout()
//        collectionView.layoutSubviews()
        
        if !slides.isEmpty {
            self._startAutoSlideTimer()
        }
    }
    
    @objc func autoSlide() {
        guard !onboardingSlides.isEmpty else { return }
        let nextIndex = pageControl.currentPage + 1
        
        if nextIndex < onboardingSlides.count {
            let indexPath = IndexPath(item: nextIndex, section: 0)
            pageControl.currentPage = nextIndex
            collectionView.scrollToItem(at: indexPath, at: .right, animated: true)
        } else {
            timer?.invalidate()
//            presenter?.didNavigateToOnboardingFinal()
        }
    }

    // MARK: - Actions
    @IBAction func skipButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        presenter?.didNavigateToOnboardingFinal()
    }
    
    @IBAction func pageControlValueChanged(_ sender: UIPageControl) {
        let selectedIndex = sender.currentPage
        let indexPath = IndexPath(item: selectedIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension onboardingslideViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboardingSlides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as? OnBoardingSlide else {
            return UICollectionViewCell()
        }
        
        let slide = onboardingSlides[indexPath.item]
        cell.configure(with: slide)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout, layout.scrollDirection == .horizontal, layout.minimumLineSpacing == 0, layout.minimumInteritemSpacing ==  0 {
            return CGSize(width: UIScreen.main.bounds.width, height:collectionView.bounds.size.height /*UIScreen.main.bounds.height*/)
        } else {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height / 3)
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageIndex = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = pageIndex
        
        if pageIndex == onboardingSlides.count - 1 {
            timer?.invalidate()
//            presenter?.didNavigateToOnboardingFinal()
        }
    }
}

