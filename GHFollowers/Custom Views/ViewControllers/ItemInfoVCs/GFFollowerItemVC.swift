//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 20.01.2021.
//

import UIKit

class GFFollowerInfoVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItem()
    }
    
    override func actionButtonTapped() { delegate.didTapGetFollowers(for: user) }
    
    private func configureItem() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        iteminfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
