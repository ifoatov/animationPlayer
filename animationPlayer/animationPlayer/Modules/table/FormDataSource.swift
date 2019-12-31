//
//  FormDataSource.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 31.12.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import Foundation
import UIKit

final class FormDataSource: NSObject, UITableViewDataSource {
	
	var items: [FormItem] = [
		FormItemImp(title: "Title 1", value: "Value 1"),
		FormItemImp(title: "Title 2", value: "Value 2"),
		FormItemImp(title: "Title 3", value: "Value 3"),
	]
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = items[indexPath.row]
		guard let cell = tableView.dequeueReusableCell(withIdentifier: item.cell.reusableIdentifier) else {
			return UITableViewCell()
		}
		item.configure(cell: cell)
		return cell
	}
	
	func configure(table: UITableView) {
		//todo fix this
		table.register(TextFieldTableViewCell.self, forCellReuseIdentifier: TextFieldTableViewCell.reusableIdentifier)
		let label = UILabel()
		label.text = "some text"
		table.tableFooterView = label
		table.dataSource = self
	}
	
}
