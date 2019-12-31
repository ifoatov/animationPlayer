//
//  TableFooterView.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 08.01.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import UIKit

class TableFooterView: UIView {

	let label = UILabel(frame: .zero)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setup() {
		translatesAutoresizingMaskIntoConstraints = false
		label.text = "Footer View"
		label.textColor = .black
		label.numberOfLines = 0
		label.font = .systemFont(ofSize: 25)
		label.translatesAutoresizingMaskIntoConstraints = false
		addSubview(label)
		label.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
		label.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
		label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
		label.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
	}

}
