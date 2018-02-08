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
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
            case numberButton:
                play(move: .number)
            case fizzButton:
                play(move: .fizz)
            case buzzButton:
                play(move: .buzz)
            case fizzBuzzButton:
                play(move: .fizzBuzz)
            default:
                print("Invalid selection")
        }
    }    
}

