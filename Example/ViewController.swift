//
//  ViewController.swift
//  Example
//
//  Created by Yogesh Bharate on 3/11/20.
//  Copyright © 2020 Bharate, Yogesh. All rights reserved.
//

import UIKit
import GSKit

class ViewController: GSViewController {
  
  var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
  var currentIndex = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    changeBackground(withColor: colors[currentIndex])
    self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
  }
  
  @objc func handleClick() {
    currentIndex += 1
    if !colors.indices.contains(currentIndex) {
      currentIndex = 0
    }
    changeBackground(withColor: colors[currentIndex])
  }
}

