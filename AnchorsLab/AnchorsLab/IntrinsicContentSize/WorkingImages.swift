//
//  WorkingImages.swift
//  AnchorsLab
//
//  Created by thyagoraphael on 7/25/21.
//

import UIKit

class WorkingImages: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let image = makeImageView(named: "rush")
        let label = makeLabel(withText: "Title")
        let button = makeButton(withText: "Get Started")
        
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            // image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 300),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    public func makeImageView(named: String) -> UIImageView {
        let viewImage = UIImageView()
        viewImage.translatesAutoresizingMaskIntoConstraints = false
        viewImage.contentMode = .scaleAspectFit
        viewImage.image = UIImage(named: named)
        viewImage.backgroundColor = .red
        
        // why only one dimension? because height is the only dimension that is ambigous
        viewImage.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        viewImage.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        
        return viewImage
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        
        return button
    }
}
