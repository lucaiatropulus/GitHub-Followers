//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Luca Nicolae Iatropulus on 20.01.2021.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItem()
    }
    
    override func actionButtonTapped() { delegate.didTapGitHubProfile(for: user) }
    
    private func configureItem() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        iteminfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
}
