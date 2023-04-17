//
//  ViewController.swift
//  ViewConstraints
//
//  Created by Hariprasath.dp on 04/17/2023.
//  Copyright (c) 2023 Hariprasath.dp. All rights reserved.
//

import UIKit
import ViewConstraints

class ViewController: UIViewController {
    
    private lazy var tempButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Temp button", for: .normal)
        btn.backgroundColor = .blue
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tempButton)
        tempButton.fillParent(horizontalPadding: 20, verticalPadding: 40)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

