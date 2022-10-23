//
//  UIBurrowTextField.swift
//  Burrow
//
//  Created by Ahmed Yamany on 16/10/2022.
//

import UIKit

class UIBurrowTextFieldView: UIView, UITextFieldDelegate{
    var textField = UITextField(frame: .zero)
    var label = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customizeTextField()
        self.customizeLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func customizeTextField(){
        addSubview(textField)
        textField.delegate = self
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = ViewManager.shared.colors.secencoryFontColor?.cgColor
        textField.layer.borderWidth = 0.5
        textField.setLeftPaddingPoints(20)
        textField.layer.masksToBounds = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .numberPad
        textField.textContentType = .telephoneNumber
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5),
        ])
    }
    
    private func customizeLabel(){
        addSubview(label)
        label.textColor = ViewManager.shared.colors.secencoryFontColor
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = ViewManager.shared.colors.viewBackgroudColor
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: textField.leadingAnchor, constant: 20),
            label.topAnchor.constraint(equalTo: textField.topAnchor, constant: -7)
        ])
    }
    
    func customize(with text: String){
        textField.placeholder = text
        label.text = text
        label.isHidden = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.placeholder = ""
        label.isHidden = false
    }

}

