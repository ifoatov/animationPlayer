//
//  FormViewCoordinator.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 08.01.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import Foundation
import UIKit

class FormViewCoordinator: BaseCoordinator {
	var navigationController: UINavigationController?
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
		super.init()
	}
	
	override func start() {
		let viewController = FormViewController()
		navigationController?.pushViewController(viewController, animated: false)
	}
}
