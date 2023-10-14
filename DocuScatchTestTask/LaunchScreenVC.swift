//
//  LaunchScreenVC.swift
//  DocuScatchTestTask
//
//  Created by Dmitry Dmitry on 14.10.2023.
//

import UIKit
import SnapKit

class LaunchScreenVC: UIViewController {

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "docuScatchLaunchScreen")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(imageView)
    }
    
    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
