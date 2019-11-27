//
//  AppDelegate.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 27.11.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?
	private var appCoordinator: AppCoordinator!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		appCoordinator = AppCoordinator(window: window!)
		appCoordinator.start()
        return true
    }
}

