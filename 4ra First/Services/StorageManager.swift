//
//  StorageManager.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//

import RealmSwift

class StorageManager {
    
    static let shared = StorageManager()
    
    let realm = try! Realm()
    
    private init() { }
    
    func save(_ game: Game) {
        write {
            realm.add(game)
        }
    }
    
    func update(_ game: Game, for time: Int) {
        write {
            game.timeGame = time
        }
    }
    
    func update(_ game: Game, currentStatus: Int) {
        write {
            game.currentStatusGame = currentStatus
        }
    }
    
    func update(_ player: Player, point: Int) {
        write {
            player.points = point
        }
    }
    
    func update(forFavorite player: Player) {
        write {
            player.isFavorite = true
        }
    }
    
    func delete(_ game: Game) {
        write {
            realm.delete(game.players)
            realm.delete(game)
        }
    }
    
    func fetchGame(completion: @escaping (Results<Game>) -> Void) {
        
        let games = realm.objects(Game.self)
        completion(games)
    }
    
    private func write(completion: () -> Void) {
        do {
            try realm.write { completion() }
        } catch  {
            print("Error write or read realm in db: \(error)")
        }
    }
}
