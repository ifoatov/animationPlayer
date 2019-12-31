//
//  BezierPathTutorialView.swift
//  animationPlayer
//
//  Created by Iskander Foatov on 08.02.2020.
//  Copyright © 2020 Iskander Foatov. All rights reserved.
//

import UIKit

class BezierPathTutorialView: UIView {
	
	private lazy var container: UIView = {
		let view = UIView(frame: bounds)
		view.backgroundColor = .yellow
		return view
	}()
	
	private var targetSize: CGSize {
		return CGSize(width: 200, height: 200)
	}
	
	private var cornerRadius: CGFloat {
		return 20
	}
	
	private lazy var targetRect: CGRect = {
		let origin = CGPoint(x: center.x - (targetSize.width / 2), y: center.y - (targetSize.height / 2))
		let result = CGRect(origin: origin, size: targetSize)
		return result
	}()
	
	private lazy var bordersLayer: CALayer = {
		let path = UIBezierPath(roundedRect: targetRect.insetBy(dx: -cornerRadius, dy: -cornerRadius), cornerRadius: cornerRadius + 20)
		path.append(UIBezierPath(roundedRect: targetRect, cornerRadius: cornerRadius + 15))
//		let temp = CGRect(
//						origin:
//							CGPoint(x: 0, y: center.y - (targetSize.height / 2)),
//						size:
//							CGSize(
//								width: bounds.size.width,
//								height: targetSize.height / 2)
//					)
//		path.append(UIBezierPath(rect:temp))
		let result = CAShapeLayer()
		result.path = path.cgPath
		result.fillColor = UIColor.green.cgColor
		
		let gradient = CAGradientLayer()
		gradient.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor, UIColor.orange.cgColor, UIColor.blue.cgColor]
		gradient.locations = [0, 1, 2, 3]
		gradient.startPoint = CGPoint(x: 0, y: 0)
		gradient.endPoint = CGPoint(x: 1, y: 1)
		gradient.frame = bounds
		gradient.mask = result
		
		let animation = CABasicAnimation(keyPath: "locations")
		animation.fromValue = [0, 1, 2, 3]
		animation.toValue = [0, 0, 0, 0]
		animation.autoreverses = false
		animation.duration = 2
		animation.repeatCount = Float.infinity
		
		gradient.add(animation, forKey: nil)
		return gradient
	}()
	
	private lazy var targetMask: CAShapeLayer = {
		let path = UIBezierPath(roundedRect: targetRect, cornerRadius: cornerRadius)
		path.append(UIBezierPath(rect: bounds))
		let result = CAShapeLayer()
		result.path = path.cgPath
		result.fillRule = .evenOdd
		return result
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder) not implemented")
	}

	private func setup() {
		backgroundColor = .white
		addSubview(container)
		container.layer.mask = targetMask
		container.layer.addSublayer(bordersLayer)
	}
}
