//
//  ViewController.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

import UIKit

//подписывается view
protocol MainViewInputProtocol: AnyObject {
    func setGames(_ games: [Games])
}

//подписывается Presenter
protocol MainviewOutputProtocol: AnyObject {
    init(view: MainViewInputProtocol)
}

class MainViewController: UIViewController {

    // MARK: - Public Properties
    var presenter: MainviewOutputProtocol!
    
    // MARK: - UI Elements
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConsraints()
    }
}

// MARK: - Setup View
extension MainViewController {
    private func setupView() {
        view.backgroundColor = .yellow
    }
}

// MARK: - Setup Constraints
extension MainViewController {
    private func setupConsraints() {
        
    }
}

// MARK: - MainViewInputProtocol
extension MainViewController: MainViewInputProtocol {
    func setGames(_ games: [Games]) {
        
    }
}
