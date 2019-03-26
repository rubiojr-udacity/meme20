//
//  ViewControllerExtensions.swift
//  Meme10
//
//  Created by Sergio Rubio on 13/03/2019.
//  Copyright © 2019 Sergio Rubio. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
