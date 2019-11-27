//
//  AnimationsListCoordinator.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 27.11.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import Foundation
import UIKit

class AnimationsListCoordinator: BaseCoordinator {
	var navigationController: UINavigationController?
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
		super.init()
	}
	
	override func start() {
		let viewController = ViewController()
		navigationController?.pushViewController(viewController, animated: false)
	}
}
