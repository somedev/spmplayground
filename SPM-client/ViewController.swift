//
//  ViewController.swift
//  SPM-client
//
//  Created by Eduard Panasiuk on 7/20/19.
//  Copyright © 2019 Eduard Panasiuk. All rights reserved.
//

import UIKit
import library

class ViewController: UIViewController {

    private let label = UILabel(frame: .zero)
    private let generator = Generator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = .black
        label.text = generator.generate()
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor).isActive = true
        label.heightAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
        
    }
}

