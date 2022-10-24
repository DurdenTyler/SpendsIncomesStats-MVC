//
//  CustomTextField.swift
//  Organize your spends and income
//
//  Created by Ivan White on 24.10.2022.
//

import UIKit

class CustomTextField: UIView {
    
    private let background: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9536301494, green: 0.9779675603, blue: 0.977543056, alpha: 1)
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    
    private let sumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Сумма"
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    private let separator: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return view
    }()
    
    let textField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "1000.00 руб"
        textfield.backgroundColor = .none
        textfield.textColor = .darkText
        textfield.keyboardType = .numberPad
        textfield.borderStyle = .none
        textfield.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftViewMode = .always
        textfield.layer.masksToBounds = true
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
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(background)
        self.addSubview(sumLabel)
        self.addSubview(separator)
        self.addSubview(textField)

    }
}


//MARK: SetConstraints
extension CustomTextField {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: self.topAnchor),
            background.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            background.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            sumLabel.centerYAnchor.constraint(equalTo: background.centerYAnchor),
            sumLabel.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            separator.centerYAnchor.constraint(equalTo: background.centerYAnchor),
            separator.leadingAnchor.constraint(equalTo: sumLabel.trailingAnchor, constant: 10),
            separator.widthAnchor.constraint(equalToConstant: 1),
            separator.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            textField.centerYAnchor.constraint(equalTo: background.centerYAnchor),
            textField.leadingAnchor.constraint(equalTo: separator.trailingAnchor, constant: 2),
            textField.widthAnchor.constraint(equalToConstant: 233)
        ])
    }
}
