//
//  ViewController.swift
//  TestingSample
//
//  Created by mac on 1/9/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
        // Do any additional setup after loading the view, typically from a nib.
    }


}

