//
//  GameIneteractor.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

//Interactor
protocol GameInteractorInputProtocol: AnyObject {
    init(presenter: GameInteractorOutputProtocol, game: Game)
    func provideGame()
}

//Presenter
protocol GameInteractorOutputProtocol: AnyObject {
    func receiveGame(with gameData: GameData)
}

class GameIneteractor: GameInteractorInputProtocol {
    
    unowned let presenter: GameInteractorOutputProtocol
    private let game: Game
    
    required init(presenter: GameInteractorOutputProtocol, game: Game) {
        self.presenter = presenter
        self.game = game
        
        
    }
    
    func provideGame() {
        let gameModelForPresenter = GameData(nameTitle: game.name)
        presenter.receiveGame(with: gameModelForPresenter)
    }
    
}
