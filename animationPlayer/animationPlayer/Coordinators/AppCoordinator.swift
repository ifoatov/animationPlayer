//
//  AppCoordinator.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 27.11.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
	let window: UIWindow
	
	init(window: UIWindow) {
		self.window = window
		super.init()
	}
	
	override func start() {
		let navigationController = UINavigationController()
		
		let animationsListCoordinator = AnimationsListCoordinator(navigationController: navigationController)
		animationsListCoordinator.start()
		
		window.rootViewController = navigationController
		window.makeKeyAndVisible()
		
		animationsListCoordinator.isCompleted = { [weak self] in
			self?.free(coordinator: animationsListCoordinator)
		}
	}
}
