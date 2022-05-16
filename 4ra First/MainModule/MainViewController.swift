//
//  ViewController.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

import UIKit

//подписывается view
protocol MainViewInputProtocol: AnyObject {
    func setGames(_ games: [Game])
}

//подписывается Presenter
protocol MainviewOutputProtocol: AnyObject {
    init(view: MainViewInputProtocol)
}

class MainViewController: UIViewController {

    // MARK: - Public Properties
    var presenter: MainviewOutputProtocol!
    
    // MARK: - UI Elements
    
    lazy private var temproryButton: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(goGame), for: .touchUpInside)
        button.setTitle("Go to Game", for: .normal)
        button.titleLabel?.textColor = .specialBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConsraints()
    }
    
    // MARK: - UI Action
    @objc private func goGame() {
        let vc = GameViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Setup View
extension MainViewController {
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(temproryButton)
    }
}

// MARK: - Setup Constraints
extension MainViewController {
    private func setupConsraints() {
        NSLayoutConstraint.activate([
            temproryButton.heightAnchor.constraint(equalToConstant: 40),
            temproryButton.widthAnchor.constraint(equalToConstant: 100),
            temproryButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            temproryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

// MARK: - MainViewInputProtocol
extension MainViewController: MainViewInputProtocol {
    func setGames(_ games: [Game]) {
        
    }
}
