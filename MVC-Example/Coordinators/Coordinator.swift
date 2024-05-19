//
//  Coordinator.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 19/05/24.
//

import Foundation
import UIKit

protocol Coordinator {
    var viewController : UIViewController? { get }
    var navigationController : UINavigationController? { get }
    
    func start()
}

extension Coordinator {
    var viewController : UIViewController? { nil }
    var navigationController : UINavigationController? { nil }
}
