//
//  ViewController.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 27.11.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import UIKit

class AnimationsListViewController: UIViewController {

	let model = AnimationsListModel()
	var tableView: UITableView {
		get {
			return view as! UITableView
		}
	}
	
	override func loadView() {
		view = UITableView()
	}
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reusableIdentifier)
		tableView.dataSource = self
		tableView.delegate = self
    }
}

extension AnimationsListViewController: UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return model.items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reusableIdentifier, for: indexPath)
		// TODO: configure cell
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}
	
}

extension UITableViewCell {
	static var reusableIdentifier: String {
		get {
			return "\(self.classForCoder())"
		}
	}
}
