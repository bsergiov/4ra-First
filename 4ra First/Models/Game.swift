//
//  Game.swift
//  4ra First
//
//  Created by SV on 16.05.2022.
//
import RealmSwift

class Game: Object {
    @Persisted var name = ""
    @Persisted var typeGame = 0
    @Persisted var currentStatusGame = 0
    @Persisted var timeGame = 0
    @Persisted var pointsMax = 0
    @Persisted var players: List<Player>
}

class Player: Object {
    @Persisted var playerName = ""
    @Persisted var isFavorite = false
    @Persisted var points = 0
}
