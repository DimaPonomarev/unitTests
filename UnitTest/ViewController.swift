//
//  ViewController.swift
//  UnitTest
//
//  Created by Дмитрий Пономарев on 24.07.2023.
//

import UIKit

class ViewController: UIViewController {

    private (set) var volume = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setVolume(volume: Int) {
        self.volume = min(max(volume, 0), 100)
    }
    
    func charactersCompare(one: String, two: String) -> Bool {
        return Set(one) == Set(two)
    }

}

