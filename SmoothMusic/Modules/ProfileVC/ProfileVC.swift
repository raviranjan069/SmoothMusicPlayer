//
//  ProfileVC.swift
//  SmoothMusic
//
//  Created by Ravi Ranjan on 12/08/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    
    //MARK: - IBoutlets
    
    @IBOutlet weak var greeenView: UIView!
    @IBOutlet weak var userProfileImageView: UIImageView!
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupUI()
    }
    
    // MARK: - Methods
    private func setupUI() {
        userProfileImageView.layer.cornerRadius = userProfileImageView.frame.height / 2
        userProfileImageView.contentMode = .scaleToFill
        userProfileImageView.image = UIImage(named: "userAnimoji")
    }
}
