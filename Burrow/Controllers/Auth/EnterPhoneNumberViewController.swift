//
//  EnterPhoneNumberViewController.swift
//  Burrow
//
//  Created by Ahmed Yamany on 16/10/2022.
//

import UIKit

class EnterPhoneNumberViewController: UIViewController {
    // MARK: - Properties
    
    // MARK: - SubViews
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var phoneTextFieldView: UIView!
    var phoneTextField = UIBurrowTextFieldView(frame: .zero)
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  ViewManager.shared.colors.viewBackgroudColor
        customizePhoneLabel()
        customizeMessageLabel()
        addCustomizePhoneTextField()
        customizeContinueButton()
        skipButton.tintColor = UIColor(named: "primaryFontColor")
    }
    
    // MARK: - Privates
    private func customizePhoneLabel(){
        phoneLabel.textColor = ViewManager.shared.colors.primaryFontColor
        phoneLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
    }
    
    private func customizeMessageLabel(){
        messageLabel.textColor = ViewManager.shared.colors.secencoryFontColor
        messageLabel.numberOfLines = 0
    }
    private func addCustomizePhoneTextField(){
        phoneTextFieldView.addSubview(phoneTextField)
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            phoneTextField.topAnchor.constraint(equalTo: phoneTextFieldView.topAnchor, constant: 0),
            phoneTextField.leadingAnchor.constraint(equalTo: phoneTextFieldView.leadingAnchor, constant: 0),
            phoneTextField.trailingAnchor.constraint(equalTo: phoneTextFieldView.trailingAnchor, constant: 0),
            phoneTextField.bottomAnchor.constraint(equalTo: phoneTextFieldView.bottomAnchor, constant: 0),
        ])
        phoneTextField.customize(with: "Phone Number")
    }
    
    private func customizeContinueButton(){
        continueButton.backgroundColor = UIColor(named: "primaryFontColor")
        continueButton.tintColor = UIColor(named: "viewBackgroudColor")
        continueButton.layer.cornerRadius = 30
    }
    
}
