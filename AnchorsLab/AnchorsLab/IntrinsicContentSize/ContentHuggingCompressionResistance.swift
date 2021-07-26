//
//  ContentHuggingCompressionResistance.swift
//  AnchorsLab
//
//  Created by thyagoraphael on 7/25/21.
//

import UIKit

class ContentHuggingCompressionResistance: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let nameLabel = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceholderText: "Enter name here ...")
        
        view.addSubview(nameLabel)
        view.addSubview(textField)
        
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        textField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8).isActive = true
        textField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
//        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeTextField(withPlaceholderText text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .gray
        
        return textField
    }
}
