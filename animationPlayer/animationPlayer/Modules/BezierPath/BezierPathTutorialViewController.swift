//
//  BezierPathTutorialViewController.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 08.02.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import UIKit

class BezierPathTutorialViewController: UIViewController {
	
	override func loadView() {
		view = BezierPathTutorialView(frame: UIScreen.main.bounds)
	}

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
