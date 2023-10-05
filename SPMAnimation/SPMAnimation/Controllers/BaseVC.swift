//
//  BaseVC.swift
//  SPMAnimation
//
//  Created by Евгений Лойко on 5.10.23.
//

import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

class BaseVC: UIViewController, NVActivityIndicatorViewable {
    
    func startAnimation(message: String, type: NVActivityIndicatorType, color: UIColor) {
        startAnimating(message: message, type: type, color: color)
    }
    
    func stopAnimation() {
        stopAnimating()
    }
}
