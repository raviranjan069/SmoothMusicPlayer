//
//  ViewController.swift
//  SmoothMusic
//
//  Created by Ravi Ranjan on 03/08/23.
//

import UIKit

class DashboardVC: UIViewController {
    // MARK: - Properties
    
    // MARK: - IBoutlets
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUserInfo()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupUI()
    }

    // MARK: - Methods
    private func setupUserInfo() {
        userNameLabel.text = "Olivia"
        greetingLabel.text = "Hey there!!"
        greetingLabel.textColor = .gray
        userNameLabel.textColor = .white
        greetingLabel.font = .boldSystemFont(ofSize: 25)
        userNameLabel.font = .boldSystemFont(ofSize: 30)
    }
    
    private func setupUI() {
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userImageView.contentMode = .scaleToFill
        userImageView.image = UIImage(named: "userAnimoji")
        userView.backgroundColor = .black
    }
}

