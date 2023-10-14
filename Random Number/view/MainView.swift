//
//  MainView.swift
//  Random Number
//
//  Created by Adriel Teles on 13/10/23.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func randomButtonPressed()
}

class MainView: UIView {
    
    private weak var delegate: MainViewDelegate?
        
        public func delegate(delegate: MainViewDelegate?) {
            self.delegate = delegate
        }
    
    lazy var backgorund: UIView = {
        let bg = UIView()
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.backgroundColor = UIColor(resource: .background)
        return bg
        }()
    
    lazy var logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(resource: .logo)
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    lazy var numberLabel: UILabel = {
        let number = UILabel()
        number.translatesAutoresizingMaskIntoConstraints = false
        number.text = "0"
        number.textColor = UIColor(resource: .customLabel)
        number.numberOfLines = 1
        number.textAlignment = .center
        number.font = .boldSystemFont(ofSize: 40)
        return number
    }()
    
    lazy var randomButton: UIButton = {
        let randomButton = UIButton()
        randomButton.translatesAutoresizingMaskIntoConstraints = false
        randomButton.setImage(UIImage(resource: .botaogerar), for: .normal)
        randomButton.setImage(UIImage(resource: .botaogerarPressionado), for: .highlighted)
        randomButton.contentMode = .scaleToFill
        randomButton.addTarget(self, action: #selector(randomButtonPressed), for: .touchUpInside)
        
        return randomButton
    }()
    
    @objc func randomButtonPressed(){
        delegate?.randomButtonPressed()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgorund)
        addSubview(logoImageView)
        addSubview(numberLabel)
        addSubview(randomButton)
        
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configContraints(){
        NSLayoutConstraint.activate([
            
            backgorund.topAnchor.constraint(equalTo: topAnchor),
            backgorund.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgorund.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgorund.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            logoImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            logoImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            logoImageView.heightAnchor.constraint(equalToConstant: 110),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            
            
//            numberLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            numberLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor),
            numberLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            numberLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            numberLabel.bottomAnchor.constraint(equalTo: randomButton.topAnchor),
            
            
            randomButton.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 20),
            randomButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            randomButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            randomButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            randomButton.heightAnchor.constraint(equalToConstant: 220),
            randomButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
}
