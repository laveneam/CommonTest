//
//  File.swift
//  
//
//  Created by Lavinia Mihalachi on 15.09.2021.
//

import SnapKit
import UIKit

extension UIView {
    public static func makeDefaultView() -> UIView {
        let view = UIView()
        return view
    }
    
    static func empty(width: CGFloat = 0, height: CGFloat = 0) -> UIView {
        return UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
    }
    static func makeView(_ color: UIColor) -> UIView {
        return UIView
            .makeDefaultView()
            .addingColor(color: color)
    }
    static var clear: UIView {
        return UIView
                .makeView(.clear)
    }
    static func makeDefaultHorizontalLine(height: Int) -> UIView {
        let view = UIView()
        view.snp.makeConstraints {
            $0.height.equalTo(height)
        }
        return view
    }
    static func makeHorizontalLine(height: Int, color: UIColor = .black) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.snp.makeConstraints {
            $0.height.equalTo(height)
        }
        return view
    }
    static func makeVerticalLine(width: Int, color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.snp.makeConstraints {
            $0.width.equalTo(width)
        }
        return view
    }
    @discardableResult
    func addToSuperview(_ superview: UIView) -> UIView {
        superview.addSubview(self)
        return self
    }
    @discardableResult
    func makeConstraints(_ closure: (ConstraintMaker) -> Void) -> UIView {
        self.snp.makeConstraints(closure)
        return self
    }
    func addingBlur(style: UIBlurEffect.Style = .dark) -> UIView {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
        return self
    }
    func addingColor(color: UIColor) -> Self {
        backgroundColor = color
        return self
    }
    func addingCornerRadius(cornerRadius: CGFloat) -> UIView {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        return self
    }
    func settingIsHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    func settingAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    func addingTapGesture(target: Any, action selector: Selector) -> Self {
        self.addGestureRecognizer(UITapGestureRecognizer(target: target, action: selector))
        self.isUserInteractionEnabled = true
        return self
    }
    func addingBorder(color: UIColor, width: CGFloat, cornerRadius: CGFloat) -> Self {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
        return self
    }
}

