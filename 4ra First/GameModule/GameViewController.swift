//
//  GameViewController.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

import UIKit

//view
protocol GameViewInputProtocol: AnyObject {
    func setTitle(_ title: String)
}

//presenter
protocol GameViewOutputProtocol: AnyObject {
    init(view: GameViewInputProtocol)
    func showDetail()
}

class GameViewController: UIViewController {

    // MARK: - Public Properties
    var presenter: GameViewOutputProtocol!
    
    // MARK: - UI Elements
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textColor = .white
        label.font = .avenirNextBold24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy private var atributeForaImag: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "atributFora")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        
        presenter.showDetail()
    }
}

// MARK: - Setup Views
extension GameViewController {
    private func setupView() {
        view.backgroundColor = .specialBackground
        view.addSubview(titleLabel)
        view.addSubview(atributeForaImag)
    }
}

// MARK: - Setup Constraints
extension GameViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.heightAnchor.constraint(equalToConstant: 24),
            titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            atributeForaImag.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            atributeForaImag.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 183 / 310),
            atributeForaImag.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            atributeForaImag.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}

extension GameViewController: GameViewInputProtocol {
    func setTitle(_ title: String) {
        titleLabel.text = title
    }
    
}
