//
//  BezierPathTutorilaCoordinator.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 08.02.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import UIKit

class BezierPathTutorialCoordinator: BaseCoordinator {
	let navController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navController = navigationController
	}
	
	override func start() {
		let vc = BezierPathTutorialViewController()
		navController.pushViewController(vc, animated: true)
	}
}
