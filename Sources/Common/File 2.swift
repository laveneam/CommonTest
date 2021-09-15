//
//  File 2.swift
//  
//
//  Created by Lavinia Mihalachi on 15.09.2021.
//

import SnapKit
import UIKit

extension UITextField {
    static func makeDefault(placeholder: String, height: Int = 50) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.snp.makeConstraints {
            $0.height.equalTo(height)
        }
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: height))
        textField.leftViewMode = .always
        textField.autocorrectionType = .no
        return textField
    }
    static func makePXTextField(placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.6)])
        textField.textColor = .white
        textField.layer.borderColor = UIColor.clear.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 3.0
        textField.returnKeyType = .next
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        textField.leftViewMode = .always
        textField.snp.makeConstraints {
            $0.height.equalTo(50.0)
        }
        return textField
    }
    func settingKeyboardType(_ keyboardType: UIKeyboardType) -> UITextField {
        self.keyboardType = keyboardType
        return self
    }
    func settingContentType(_ contentType: UITextContentType) -> UITextField {
        self.textContentType = contentType
        return self
    }
    func settingIsSecureTextEntry() -> UITextField {
        self.isSecureTextEntry = true
        return self
    }
    func settingReturnKeyType(_ returnKeyType: UIReturnKeyType) -> UITextField {
        self.returnKeyType = returnKeyType
        return self
    }
    func setRightPaddingPoints(amount: CGFloat) -> UITextField {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
        return self
    }
    func setLeftImage(image: UIImage) -> UITextField {
        let imageView = UIImageView(frame: CGRect(x: 13, y: 13, width: 12, height: 12))
        imageView.image = image
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        containerView.addSubview(imageView)
        leftView = containerView
        leftViewMode = .always
        return self
    }
    func addingTextFieldColor(color: UIColor) -> UITextField {
        backgroundColor = color
        return self
    }
    func addingTextFieldCornerRadius(cornerRadius: CGFloat) -> UITextField {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        return self
    }
    func addClearButton() -> UITextField {
        self.clearButtonMode = UITextField.ViewMode.whileEditing
        return self
    }
}

