//
//  ViewController.swift
//  ParabenFree
//
//  Created by C4Q on 1/8/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewHierarchy()
        configureConstraints()
    }
    
    // MARK: - Setup Hierarchy
    func setupViewHierarchy() {
        view.addSubview(textField)
    }
    
    // MARK: - Configure Constraints
    func configureConstraints() {
        textField.snp.makeConstraints { (make) in
            make.bottom.leading.trailing.equalToSuperview()
        }
    }
    
    // MARK: - Lazy Instantiate UI
    lazy var textField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.placeholder = "Say Hello!"
        return field
    }()
}

