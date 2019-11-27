//
//  Coordinator.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 27.11.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import Foundation

protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
	
	func store(coordinator: Coordinator) {
		childCoordinators.append(coordinator)
	}
	
	func free(coordinator: Coordinator) {
		childCoordinators = childCoordinators.filter { $0 !== coordinator }
	}
}

typealias CoordinatorCompletion = (() -> ())

class BaseCoordinator: Coordinator {
	var childCoordinators: [Coordinator] = []
	var isCompleted: CoordinatorCompletion?
	
	func start() {
		fatalError("Children should implement 'start' method")
	}
}
