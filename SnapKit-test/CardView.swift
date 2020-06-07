//
//  CardView.swift
//  SnapKit-test
//
//  Created by Ahmed on 6/7/20.
//  Copyright © 2020 Ahmed,ORG. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    private let padding: CGFloat = 16
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.backgroundColor = .white
        image.layer.cornerRadius = 8
        return image
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private override init(frame: CGRect) {
      super.init(frame: frame)
      setupViews()
      setupConstraints()
    }
    
    public convenience init(with model: CardModel) {
      self.init(frame: .zero)
      imageView.image = UIImage(named: model.imageName)
      textLabel.text = model.characterName
      backgroundColor = model.backgroundColor
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
      //add code here to add views to hierarchy
        addSubviews(imageView, textLabel)
    }
    
    private func setupConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview().inset(padding).labeled("CardViewImage")
        }
        
        textLabel.setContentHuggingPriority(.defaultLow + 1, for: .vertical)
        textLabel.setContentCompressionResistancePriority(.defaultHigh + 1, for: .vertical)
        textLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).inset(-padding)
            make.leading.trailing.bottom.equalToSuperview().inset(padding)
//            make.height.equalTo(25)
        }
    }
    

}
