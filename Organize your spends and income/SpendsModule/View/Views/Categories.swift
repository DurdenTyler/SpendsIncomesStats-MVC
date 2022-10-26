//
//  CategoriesCollection.swift
//  Organize your spends and income
//
//  Created by Ivan White on 25.10.2022.
//

import UIKit

class Categories: UIView {
    
    
//MARK: Food
    private let buttonFood: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "food"), for: .normal)
        button.addTarget(self, action: #selector(buttonFoodTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelFood: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Еда"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()

    
//MARK: Clothes
    private let buttonClothes: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "clothes"), for: .normal)
        button.addTarget(self, action: #selector(buttonClothesTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelClothes: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Одежда"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()


//MARK: Connection
    private let buttonConnection: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "connection"), for: .normal)
        button.addTarget(self, action: #selector(buttonConnectionTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelConnection: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Связь"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    
//MARK: Leisure
    private let buttonLeisure: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "book"), for: .normal)
        button.addTarget(self, action: #selector(buttonLeisureTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelLeisure: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Досуг"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
//MARK: Health
    private let buttonHealth: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "health"), for: .normal)
        button.addTarget(self, action: #selector(buttonHealthTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelHealth: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Здоровье"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    

//MARK: Pet
    private let buttonPet: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "pet"), for: .normal)
        button.addTarget(self, action: #selector(buttonPetTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelPet: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Питомцы"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    
//MARK: Auto
    private let buttonAuto: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "auto"), for: .normal)
        button.addTarget(self, action: #selector(buttonAutoTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelAuto: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Авто"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    

//MARK: Other
    private let buttonOther: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "other"), for: .normal)
        button.addTarget(self, action: #selector(buttonOtherTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelOther: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Другое"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.backgroundColor = UIColor(named: "specialGray")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()


//MARK: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonFood)
        self.addSubview(labelFood)
    
        self.addSubview(buttonClothes)
        self.addSubview(labelClothes)
        
        self.addSubview(buttonConnection)
        self.addSubview(labelConnection)
        
        self.addSubview(buttonLeisure)
        self.addSubview(labelLeisure)
        
        self.addSubview(buttonHealth)
        self.addSubview(labelHealth)
        
        self.addSubview(buttonPet)
        self.addSubview(labelPet)
        
        self.addSubview(buttonAuto)
        self.addSubview(labelAuto)
        
        self.addSubview(buttonOther)
        self.addSubview(labelOther)
    }
    
    
//MARK: objc button func
    @objc private func buttonFoodTapped() {
        print("buttonFood tapped")
    }
    
    @objc private func buttonClothesTapped() {
        print("buttonClothes tapped")
    }
    
    @objc private func buttonConnectionTapped() {
        print("buttonConnection tapped")
    }
    
    @objc private func buttonLeisureTapped() {
        print("buttonLeisure tapped")
    }
    
    @objc private func buttonHealthTapped() {
        print("buttonHealth tapped")
    }
    
    @objc private func buttonPetTapped() {
        print("buttonHealth tapped")
    }
    
    @objc private func buttonAutoTapped() {
        print("buttonAuto tapped")
    }
    
    @objc private func buttonOtherTapped() {
        print("buttonOther tapped")
    }
}


//MARK: SetConstraints
extension Categories {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            buttonFood.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            buttonFood.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            buttonFood.heightAnchor.constraint(equalToConstant: 70),
            buttonFood.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelFood.topAnchor.constraint(equalTo: buttonFood.bottomAnchor, constant: 8),
            labelFood.centerXAnchor.constraint(equalTo: buttonFood.centerXAnchor, constant: 0),
            labelFood.heightAnchor.constraint(equalToConstant: 20),
            labelFood.widthAnchor.constraint(equalToConstant: 39)
        ])
        
        NSLayoutConstraint.activate([
            buttonClothes.centerYAnchor.constraint(equalTo: buttonFood.centerYAnchor, constant: 0),
            buttonClothes.leadingAnchor.constraint(equalTo: buttonFood.trailingAnchor, constant: 30),
            buttonClothes.heightAnchor.constraint(equalToConstant: 70),
            buttonClothes.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelClothes.topAnchor.constraint(equalTo: buttonClothes.bottomAnchor, constant: 8),
            labelClothes.centerXAnchor.constraint(equalTo: buttonClothes.centerXAnchor, constant: 0),
            labelClothes.heightAnchor.constraint(equalToConstant: 20),
            labelClothes.widthAnchor.constraint(equalToConstant: 65)
        ])
        
        NSLayoutConstraint.activate([
            buttonConnection.centerYAnchor.constraint(equalTo: buttonClothes.centerYAnchor, constant: 0),
            buttonConnection.leadingAnchor.constraint(equalTo: buttonClothes.trailingAnchor, constant: 30),
            buttonConnection.heightAnchor.constraint(equalToConstant: 70),
            buttonConnection.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelConnection.topAnchor.constraint(equalTo: buttonConnection.bottomAnchor, constant: 8),
            labelConnection.centerXAnchor.constraint(equalTo: buttonConnection.centerXAnchor, constant: 0),
            labelConnection.heightAnchor.constraint(equalToConstant: 20),
            labelConnection.widthAnchor.constraint(equalToConstant: 53)
        ])
        
        NSLayoutConstraint.activate([
            buttonLeisure.centerYAnchor.constraint(equalTo: buttonConnection.centerYAnchor, constant: 0),
            buttonLeisure.leadingAnchor.constraint(equalTo: buttonConnection.trailingAnchor, constant: 30),
            buttonLeisure.heightAnchor.constraint(equalToConstant: 70),
            buttonLeisure.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelLeisure.topAnchor.constraint(equalTo: buttonLeisure.bottomAnchor, constant: 8),
            labelLeisure.centerXAnchor.constraint(equalTo: buttonLeisure.centerXAnchor, constant: 0),
            labelLeisure.heightAnchor.constraint(equalToConstant: 20),
            labelLeisure.widthAnchor.constraint(equalToConstant: 53)
        ])
        
        NSLayoutConstraint.activate([
            buttonHealth.topAnchor.constraint(equalTo: labelFood.bottomAnchor, constant: 20),
            buttonHealth.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            buttonHealth.heightAnchor.constraint(equalToConstant: 70),
            buttonHealth.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelHealth.topAnchor.constraint(equalTo: buttonHealth.bottomAnchor, constant: 8),
            labelHealth.centerXAnchor.constraint(equalTo: buttonHealth.centerXAnchor, constant: 0),
            labelHealth.heightAnchor.constraint(equalToConstant: 20),
            labelHealth.widthAnchor.constraint(equalToConstant: 74)
        ])
        
        NSLayoutConstraint.activate([
            buttonPet.centerYAnchor.constraint(equalTo: buttonHealth.centerYAnchor, constant: 0),
            buttonPet.leadingAnchor.constraint(equalTo: buttonHealth.trailingAnchor, constant: 30),
            buttonPet.heightAnchor.constraint(equalToConstant: 70),
            buttonPet.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelPet.topAnchor.constraint(equalTo: buttonPet.bottomAnchor, constant: 8),
            labelPet.centerXAnchor.constraint(equalTo: buttonPet.centerXAnchor, constant: 0),
            labelPet.heightAnchor.constraint(equalToConstant: 20),
            labelPet.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            buttonAuto.centerYAnchor.constraint(equalTo: buttonPet.centerYAnchor, constant: 0),
            buttonAuto.leadingAnchor.constraint(equalTo: buttonPet.trailingAnchor, constant: 30),
            buttonAuto.heightAnchor.constraint(equalToConstant: 70),
            buttonAuto.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelAuto.topAnchor.constraint(equalTo: buttonAuto.bottomAnchor, constant: 8),
            labelAuto.centerXAnchor.constraint(equalTo: buttonAuto.centerXAnchor, constant: 0),
            labelAuto.heightAnchor.constraint(equalToConstant: 20),
            labelAuto.widthAnchor.constraint(equalToConstant: 45)
        ])
        
        NSLayoutConstraint.activate([
            buttonOther.centerYAnchor.constraint(equalTo: buttonAuto.centerYAnchor, constant: 0),
            buttonOther.leadingAnchor.constraint(equalTo: buttonAuto.trailingAnchor, constant: 30),
            buttonOther.heightAnchor.constraint(equalToConstant: 70),
            buttonOther.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            labelOther.topAnchor.constraint(equalTo: buttonOther.bottomAnchor, constant: 8),
            labelOther.centerXAnchor.constraint(equalTo: buttonOther.centerXAnchor, constant: 0),
            labelOther.heightAnchor.constraint(equalToConstant: 20),
            labelOther.widthAnchor.constraint(equalToConstant: 59)
        ])
    }
}
