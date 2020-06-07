//
//  CardModel.swift
//  SnapKit-test
//
//  Created by Ahmed on 6/7/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import UIKit


class CardModel {
  var imageName: String
  var characterName: String
  var backgroundColor: UIColor
  
  init(characterName: String, backgroundColor: UIColor) {
    self.imageName = characterName
    self.characterName = characterName
    self.backgroundColor = backgroundColor
  }
  
}
