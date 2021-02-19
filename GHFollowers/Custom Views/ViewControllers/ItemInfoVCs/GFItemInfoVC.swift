//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 20.01.2021.
//

import UIKit

class GFItemInfoVC: UIViewController {
    
    let stackView       = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let iteminfoViewTwo = GFItemInfoView()
    let actionButton    = GFButton()
    
    let padding: CGFloat = 20
    
    var user: User!
    weak var delegate: UserInfoVCDelegate!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        configureUI()
    }
    
    @objc func actionButtonTapped() {}
    
    private func configureBackgroundView() {
        view.layer.cornerRadius = 18
        view.backgroundColor    = .secondarySystemBackground
    }
    
    private func configureUI() {
        configureStackView()
        configureActionButton()
    }
    
    private func configureStackView() {
        view.addSubview(stackView)
        
        stackView.axis          = .horizontal
        stackView.distribution  = .equalSpacing
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(iteminfoViewTwo)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureActionButton() {
        view.addSubview(actionButton)
        
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    

}
