//
//  BaselineAnchors.swift
//  AnchorsLab
//
//  Created by thyagoraphael on 7/24/21.
//

import UIKit

class BaselineAnchors: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let smallLabel = makeLabel(withText: "small", size: 32)
        let largeLabel = makeLabel(withText: "large", size: 52)
        
        view.addSubview(smallLabel)
        view.addSubview(largeLabel)
        
        smallLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        smallLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        //        largeLabel.topAnchor.constraint(equalTo: smallLabel.topAnchor).isActive = true
        //        largeLabel.centerYAnchor.constraint(equalTo: smallLabel.centerYAnchor).isActive = true
        largeLabel.firstBaselineAnchor.constraint(equalTo: smallLabel.firstBaselineAnchor).isActive = true
        largeLabel.leadingAnchor.constraint(equalTo: smallLabel.trailingAnchor, constant: 8).isActive = true
    }
    
    func makeLabel(withText text: String, size: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: size)
        label.text = text
        
        return label
    }
}
