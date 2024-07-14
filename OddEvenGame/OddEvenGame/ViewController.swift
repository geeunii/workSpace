//
//  ViewController.swift
//  OddEvenGame
//
//  Created by Geuni on 7/14/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userBallCountLbl: UILabel!
    @IBOutlet weak var computerBallCountLbl: UILabel!
    
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLbl.text = String(comBallsCount)
        userBallCountLbl.text = String(userBallsCount)
        
        
        
    }
    
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!! ")
    }
    

}

