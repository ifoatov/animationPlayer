//
//  FormItem.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 05.01.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import Foundation
import UIKit

protocol FormItem {
	func configure(cell: UITableViewCell)
	var cell: UITableViewCell.Type { get }
}

class FormItemImp: FormItem {
	var title: String
	var value: String
	
	var cell: UITableViewCell.Type {
		return TextFieldTableViewCell.self
	}
	
	init(title: String, value: String) {
		self.title = title
		self.value = value
	}
	
	func configure(cell: UITableViewCell) {
		guard let cell = cell as? TextFieldTableViewCell else {
			return
		}
		cell.input.text = value
	}
}
