//
//  TextFieldTableViewCell.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 05.01.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import UIKit

//extension UITableViewCell {
//	public static var reusableIdentifier: String {
//		get {
//			return self.
//		}
//	}
//}

final class TextFieldTableViewCell: UITableViewCell {

	private(set) var input: UITextField
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		self.input = UITextField(frame: .zero)
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError()
	}
	
	private func setup() {
		contentView.addSubview(input)
		
		input.translatesAutoresizingMaskIntoConstraints = false
		input.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
		input.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
		input.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
		input.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16).isActive = true
	}

}
