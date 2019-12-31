//
//  TableViewController.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 31.12.2019.
//  Copyright © 2019 Iskander Foatov. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
	
	var tableView: UITableView {
		return view as! UITableView
	}
	
	let dataSource = FormDataSource()
	
	override func loadView() {
		view = UITableView(frame: .zero, style: .plain)
	}

    override func viewDidLoad() {
		dataSource.configure(table: tableView)
        super.viewDidLoad()
		
    }

}
