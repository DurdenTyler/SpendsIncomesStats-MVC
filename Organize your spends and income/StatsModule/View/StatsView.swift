//
//  StatsView.swift
//  Organize your spends and income
//
//  Created by Ivan White on 24.10.2022.
//

import UIKit

class StatsView: UIView {
    
    private let statsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Статистика"
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        return label
    }()
    
    private let separatorUnderTitle: UIView = {
        let separator = UIView()
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = #colorLiteral(red: 0.9061687589, green: 0.9061687589, blue: 0.9061687589, alpha: 1)
        return separator
    }()
    
    private let spendLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расход"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    private let inputTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = UIColor(named: "specialGray")
        textfield.textColor = .black
        textfield.layer.cornerRadius = 10
        textfield.borderStyle = .none
        textfield.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textfield.clearButtonMode = .always
        textfield.returnKeyType = .done
        textfield.keyboardType = .numberPad
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textfield.frame.height))
        textfield.leftViewMode = .always
        return textfield
    }()
    
    
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
        self.addSubview(statsTitle)
        self.addSubview(separatorUnderTitle)
//        self.addSubview(spendLabel)
//        self.addSubview(inputTextField)
    }
    
}

//MARK: SetConstraints
extension StatsView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            statsTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            statsTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            separatorUnderTitle.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            separatorUnderTitle.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            separatorUnderTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorUnderTitle.heightAnchor.constraint(equalToConstant: 1)
        ])
        
//        NSLayoutConstraint.activate([
//            spendLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
//            spendLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 15)
//        ])
//
//        NSLayoutConstraint.activate([
//            inputTextField.centerYAnchor.constraint(equalTo: spendLabel.centerYAnchor, constant: 0),
//            inputTextField.leadingAnchor.constraint(equalTo: spendLabel.trailingAnchor, constant: 25),
//            inputTextField.widthAnchor.constraint(equalToConstant: 150),
//            inputTextField.heightAnchor.constraint(equalToConstant: 40)
//        ])
    }
}
