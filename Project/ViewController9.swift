//
//  ViewController.swift
//  Project
//
//  Created by Алексей Вадимович on 30/01/2024.
//

import UIKit
import SnapKit

class ViewController9: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()
        addSubviews()
        addConstraints()

        navigationItem.title = "navigationVC"
        navigationController?.toolbar.isTranslucent = false
    }

    private let orangeViewMain: UIView = {
        let viewMain = UIView()
        viewMain.backgroundColor = .orange
        return viewMain
    }()

    private let redButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.layer.cornerRadius = 16
        button.setTitle("Press me, please", for: .normal)
        button.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        return button
    }()

    private func setupViewController() {
        view.backgroundColor = .orange
    }

    private func addSubviews() {
        view.addSubview(orangeViewMain)
        view.addSubview(redButton)
    }

    @objc
    func buttonDidTapped() {
        let vc = ViewController10()
        navigationController?.pushViewController(vc, animated: true)
    }

    private func addConstraints() {
        orangeViewMain.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(100)
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(200)
            make.width.equalTo(200)
        }

        redButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-8)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-100)
        }
    }


}

