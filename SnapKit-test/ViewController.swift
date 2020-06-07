//
//  ViewController.swift
//  SnapKit-test
//
//  Created by Ahmed on 6/7/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    var cardView1: UIView = {
        let cardModel = CardModel(characterName: "apple", backgroundColor: .orange)
        let cardView = CardView(with: cardModel)
        return cardView
    }()
    
    var cardView2: CardView = {
        let cardModel = CardModel(characterName: "android", backgroundColor: .purple)
        let cardView = CardView(with: cardModel)
        return cardView
    }()
    
    var cardView3: CardView = {
        let cardModel = CardModel(characterName: "flutter", backgroundColor: .green)
        let cardView = CardView(with: cardModel)
        return cardView
    }()
    
    var cardView4: CardView = {
        let cardModel = CardModel(characterName: "windows", backgroundColor: .blue)
        let cardView = CardView(with: cardModel)
        return cardView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        view.backgroundColor = .white
    }

    private func setupViews() {
      view.addSubviews(cardView1, cardView2, cardView3, cardView4)
    }
    
    // MARK: - Setting Constraints
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        cardView1.snp.makeConstraints { (make) in
            make.top.equalTo(safeArea)
            make.leading.equalTo(safeArea.snp.leading)
            make.size.equalTo(safeArea).multipliedBy(0.5)
        }
        
        cardView2.snp.makeConstraints { (make) in
            make.top.equalTo(safeArea)
            make.leading.equalTo(cardView1.snp.trailing)
            make.size.equalTo(safeArea).multipliedBy(0.5)
        }
        
        cardView3.snp.makeConstraints { (make) in
            make.size.equalTo(safeArea).multipliedBy(0.5)
            make.leading.equalTo(safeArea)
            make.top.equalTo(cardView1.snp.bottom)
            make.bottom.equalTo(safeArea)
        }
        
        cardView4.snp.makeConstraints { (make) in
            make.size.equalTo(safeArea).multipliedBy(0.5)
            make.leading.equalTo(cardView3.snp.trailing)
            make.top.equalTo(cardView2.snp.bottom)
            make.bottom.equalTo(safeArea.snp.bottom)
        }
        
    }

}

