//
//  SpendsView.swift
//  Organize your spends and income
//
//  Created by Ivan White on 24.10.2022.
//

import UIKit

class SpendsView: UIView {
    
    private let spendsTitle = UILabel(title: "Расходы")
    
    private let separatorUnderTitle = Separator()
    
    private let labelSumAndImage = UILabel(text: "Сумма и Изображение")
    
    private let textField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "..."
        textfield.backgroundColor = UIColor(named: "specialGray")
        textfield.textColor = UIColor(named: "specialGray3")
        textfield.keyboardType = .numberPad
        textfield.layer.borderWidth = 0.5
        textfield.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        textfield.layer.cornerRadius = 8
        textfield.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftViewMode = .always
        textfield.layer.masksToBounds = true
        textfield.returnKeyType = .done
        return textfield
    }()
    
    private let buttonAddImage: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "blackBlue")
        button.layer.cornerRadius = 8
        button.setImage(UIImage(systemName: "photo"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(buttonAddImageTapped), for: .touchUpInside)
        return button
    }()
    
    private let labelNotNecessary: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "*Не обязательно"
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        return label
    }()
    
    private let separatorUpperCategories = Separator()
    
    private let labelCategories = UILabel(text: "Категория")
    
    private let categories = Categories()
    
    private let separatorAfterCategories = Separator()
    
    private let labelInfo = UILabel(text: "Инфо")
    
    private let info = Info()
    
    private let separatorAfterInfo = Separator()
    
    private let labelHistory = UILabel(text: "История")
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.addSubview(spendsTitle)
        self.addSubview(separatorUnderTitle)
        self.addSubview(labelSumAndImage)
        self.addSubview(textField)
        self.addSubview(buttonAddImage)
        self.addSubview(labelNotNecessary)
        self.addSubview(separatorUpperCategories)
        self.addSubview(labelCategories)
        self.addSubview(categories)
        self.addSubview(separatorAfterCategories)
        self.addSubview(labelInfo)
        self.addSubview(info)
        self.addSubview(separatorAfterInfo)
        self.addSubview(labelHistory)
    
    }
    
    @objc private func buttonAddImageTapped() {
        print("buttonAddImage Tapped")
    }
    
}

//MARK: SetConstraints
extension SpendsView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            spendsTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            spendsTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            separatorUnderTitle.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
            separatorUnderTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorUnderTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorUnderTitle.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            labelSumAndImage.centerYAnchor.constraint(equalTo: separatorUnderTitle.centerYAnchor, constant: 0),
            labelSumAndImage.centerXAnchor.constraint(equalTo: separatorUnderTitle.centerXAnchor, constant: 0),
            labelSumAndImage.heightAnchor.constraint(equalToConstant: 20),
            labelSumAndImage.widthAnchor.constraint(equalToConstant: 159)
        ])
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: self.separatorUnderTitle.bottomAnchor, constant: 35),
            textField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            textField.widthAnchor.constraint(equalToConstant: 150),
            textField.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        NSLayoutConstraint.activate([
            buttonAddImage.topAnchor.constraint(equalTo: self.separatorUnderTitle.bottomAnchor, constant: 35),
            buttonAddImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            buttonAddImage.widthAnchor.constraint(equalToConstant: 150),
            buttonAddImage.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            labelNotNecessary.topAnchor.constraint(equalTo: buttonAddImage.bottomAnchor, constant: 5),
            labelNotNecessary.leadingAnchor.constraint(equalTo: buttonAddImage.leadingAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            separatorUpperCategories.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 35),
            separatorUpperCategories.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorUpperCategories.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorUpperCategories.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            labelCategories.centerYAnchor.constraint(equalTo: separatorUpperCategories.centerYAnchor, constant: 0),
            labelCategories.centerXAnchor.constraint(equalTo: separatorUpperCategories.centerXAnchor, constant: 0),
            labelCategories.heightAnchor.constraint(equalToConstant: 20),
            labelCategories.widthAnchor.constraint(equalToConstant: 83)
        ])
        
        NSLayoutConstraint.activate([
            categories.topAnchor.constraint(equalTo: separatorUpperCategories.bottomAnchor, constant: 35),
            categories.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            categories.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            categories.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        NSLayoutConstraint.activate([
            separatorAfterCategories.topAnchor.constraint(equalTo: categories.bottomAnchor, constant: 35),
            separatorAfterCategories.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorAfterCategories.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorAfterCategories.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            labelInfo.centerYAnchor.constraint(equalTo: separatorAfterCategories.centerYAnchor, constant: 0),
            labelInfo.centerXAnchor.constraint(equalTo: separatorAfterCategories.centerXAnchor, constant: 0),
            labelInfo.heightAnchor.constraint(equalToConstant: 20),
            labelInfo.widthAnchor.constraint(equalToConstant: 55)
        ])
        
        NSLayoutConstraint.activate([
            info.topAnchor.constraint(equalTo: separatorAfterCategories.bottomAnchor, constant: 35),
            info.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            info.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            info.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            separatorAfterInfo.topAnchor.constraint(equalTo: info.bottomAnchor, constant: 35),
            separatorAfterInfo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorAfterInfo.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorAfterInfo.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            labelHistory.centerYAnchor.constraint(equalTo: separatorAfterInfo.centerYAnchor, constant: 0),
            labelHistory.centerXAnchor.constraint(equalTo: separatorAfterInfo.centerXAnchor, constant: 0),
            labelHistory.heightAnchor.constraint(equalToConstant: 20),
            labelHistory.widthAnchor.constraint(equalToConstant: 71)
        ])
    }
}
