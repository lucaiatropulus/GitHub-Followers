//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 15.01.2021.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius          = 10
        layer.borderWidth           = 2
        layer.borderColor           = UIColor.systemGray4.cgColor
        
        font                        = UIFont.preferredFont(forTextStyle: .title2)
        textAlignment               = .center
        textColor                   = .label
        tintColor                   = .label
        adjustsFontSizeToFitWidth   = true
        minimumFontSize             = 12
        
        backgroundColor             = .tertiarySystemBackground
        autocorrectionType          = .no
        returnKeyType               = .search
        placeholder                 = "Enter a username"
    }
    
}
