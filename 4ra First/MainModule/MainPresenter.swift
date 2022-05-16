//
//  MainPresenter.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

struct MainData {
    let presenterGame: Player
}

class MainPresenter: MainviewOutputProtocol {
    
    let view: MainViewInputProtocol
    
    required init(view: MainViewInputProtocol) {
        self.view = view
    }
    
}
