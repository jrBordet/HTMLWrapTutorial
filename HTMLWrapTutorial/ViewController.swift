//
//  ViewController.swift
//  HTMLWrapTutorial
//
//  Created by Jean Raphael on 07/02/2018.
//  Copyright © 2018 Jean Raphael Bordet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tutorialTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let html = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat, tortor et rutrum sagittis, lacus nisi gravida felis, vel bibendum eros risus ac tellus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam vel justo dui. Integer id libero ex. Fusce eget auctor ante.</br></br><a href='https://en.wikipedia.org/wiki/Lorem_ipsum'>Wikipedia</a>"
        
        guard let result = NSAttributedString.wrapString(html, wrapperName: "wrapper") else { return }
        
        tutorialTextView.attributedText = result
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

