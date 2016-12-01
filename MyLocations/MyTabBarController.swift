//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Mario D'Ambros Filho on 01/12/16.
//  Copyright © 2016 Dambros apps. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var childViewControllerForStatusBarStyle: UIViewController? {
        return nil
    }
}
