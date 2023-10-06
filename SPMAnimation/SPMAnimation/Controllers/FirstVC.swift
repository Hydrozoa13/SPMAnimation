//
//  FirstVC.swift
//  SPMAnimation
//
//  Created by Евгений Лойко on 5.10.23.
//

import UIKit

class FirstVC: BaseVC {
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView! {
        didSet {
            activityIndicatorView.isHidden = true
        }
    }
    
    @IBAction func startBtnAction() {
        activityIndicatorView.isHidden = false
        activityIndicatorView.startAnimating()
        startAnimation(message: "Loading...",
                       type: .ballScaleMultiple,
                       color: #colorLiteral(red: 0.2785222828,
                                            green: 0.01350668631,
                                            blue: 0.5614101291,
                                            alpha: 1))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.activityIndicatorView.isHidden = true
            self?.stopAnimation()
        }
    }
}
