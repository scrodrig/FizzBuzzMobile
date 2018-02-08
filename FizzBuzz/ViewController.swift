//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Schubert Rodriguez on 2/6/18.
//  Copyright © 2018 Thoughtworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        gameScore = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: String){
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

}

