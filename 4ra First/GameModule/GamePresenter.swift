//
//  GamePresenter.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

struct GameData {
    let nameTitle: String
}


class GamePresenter: GameViewOutputProtocol {
    
    unowned let view: GameViewInputProtocol
    var interactor: GameInteractorInputProtocol!
    
    
    required init(view: GameViewInputProtocol) {
        self.view = view
    }
    
    func showDetail() {
        interactor.provideGame()
    }
    
}

extension GamePresenter: GameInteractorOutputProtocol {
    func receiveGame(with gameData: GameData) {
        view.setTitle(gameData.nameTitle)
    }
}
