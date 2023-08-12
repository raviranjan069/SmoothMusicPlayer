//
//  UIStoryboard.swift
//  SmoothMusic
//
//  Created by Ravi Ranjan on 12/08/23.
//

import Foundation
import UIKit

extension UIViewController {
    // To get the storyboard identifier
    class var storyboardID: String {
        "\(self)"
    }
    // To instantiate the view controller form particular storyboard
    static func instantiate(fromAppStoryboard appStoryboard: AppStoryboard) -> Self {
        appStoryboard.viewController(viewControllerClass: self)
    }
    // Load View Controller from nib name
    static func loadVcFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            T(nibName: String(describing: self), bundle: nil)
        }
        return instantiateFromNib()
    }
}

extension AppStoryboard {
    // instance of storyboard
    var instance: UIStoryboard {
        UIStoryboard(name: self.rawValue.capitalized, bundle: Bundle.main)
    }
    // get view controller form storyboard
    func viewController<T: UIViewController> (
        viewControllerClass: T.Type,
        function: String = #function,
        line: Int = #line,
        file: String = #file
    ) -> T {
        let storyboardID = (viewControllerClass).storyboardID
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardID) as? T else {
            fatalError("ViewController \(storyboardID), not found in \(function),file: \(file), line:\(line)")
        }
        return scene
    }
}
