//
//  GameConfigurator.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

protocol GameConfiguratorProtocol {
    func configure(with view: GameViewController, and game: Game)
}

class GameConfigurator: GameConfiguratorProtocol {
    func configure(with view: GameViewController, and game: Game) {
        let presenter = GamePresenter(view: view)
        let interactor = GameIneteractor(presenter: presenter, game: game)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
