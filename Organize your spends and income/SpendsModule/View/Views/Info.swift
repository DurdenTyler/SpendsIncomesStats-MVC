//
//  Info.swift
//  Organize your spends and income
//
//  Created by Ivan White on 26.10.2022.
//

import UIKit

class Info: UIView {
    
//MARK: LimitImMonthLabel
    private let labelLimitInMonth: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Лимит в месяц"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelLimitSumInMonth: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "23.000,00"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(named: "blackBlue")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelRub1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "руб"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    
    
//MARK: ButtomSetALimit
    private let buttonSetALimit: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "specialGray")
        button.layer.cornerRadius = 8
        button.setTitle("Установить лимит", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        button.setTitleColor(UIColor(named: "specialGray3"), for: .normal)
        button.addTarget(self, action: #selector(buttonSetALimitTapped), for: .touchUpInside)
        return button
    }()
    
    
    
//MARK: AvailableMoney
    private let labelAvailableMoney: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Доступно для трат"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelAvailableMoneySum: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "12.490,45"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(named: "blackBlue")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelRub2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "руб"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    
    
//MARK: SpendsPeriod
    private let labelSpendsPeriod: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расходы за период"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelSpendsPeriodSum: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "8.456,00"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(named: "blackBlue")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelRub3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "руб"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    
    
//MARK: AllSpends
    private let labelAllSpends: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Все расходы"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelAllSpendsSum: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "139.695,45"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = UIColor(named: "blackBlue")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    private let labelRub4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "руб"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor(named: "specialGray3")
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
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
        self.addSubview(labelLimitInMonth)
        self.addSubview(labelLimitSumInMonth)
        self.addSubview(labelRub1)
        
        self.addSubview(buttonSetALimit)
        
        self.addSubview(labelAvailableMoney)
        self.addSubview(labelAvailableMoneySum)
        self.addSubview(labelRub2)
        
        self.addSubview(labelSpendsPeriod)
        self.addSubview(labelSpendsPeriodSum)
        self.addSubview(labelRub3)
        
        self.addSubview(labelAllSpends)
        self.addSubview(labelAllSpendsSum)
        self.addSubview(labelRub4)
    }
    
    @objc private func buttonSetALimitTapped() {
        print("buttonSetALimit Tapped")
    }
    
}

extension Info {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            labelLimitInMonth.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            labelLimitInMonth.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            labelLimitSumInMonth.bottomAnchor.constraint(equalTo: labelLimitInMonth.bottomAnchor, constant: 0),
            labelLimitSumInMonth.leadingAnchor.constraint(equalTo: labelLimitInMonth.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            labelRub1.bottomAnchor.constraint(equalTo: labelLimitInMonth.bottomAnchor, constant: 0),
            labelRub1.leadingAnchor.constraint(equalTo: labelLimitSumInMonth.trailingAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            buttonSetALimit.topAnchor.constraint(equalTo: labelLimitInMonth.bottomAnchor, constant: 8),
            buttonSetALimit.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            buttonSetALimit.widthAnchor.constraint(equalToConstant: 133),
            buttonSetALimit.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        NSLayoutConstraint.activate([
            labelAvailableMoney.topAnchor.constraint(equalTo: buttonSetALimit.bottomAnchor, constant: 13),
            labelAvailableMoney.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            labelAvailableMoneySum.bottomAnchor.constraint(equalTo: labelAvailableMoney.bottomAnchor, constant: 0),
            labelAvailableMoneySum.leadingAnchor.constraint(equalTo: labelAvailableMoney.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            labelRub2.bottomAnchor.constraint(equalTo: labelAvailableMoney.bottomAnchor, constant: 0),
            labelRub2.leadingAnchor.constraint(equalTo: labelAvailableMoneySum.trailingAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            labelSpendsPeriod.topAnchor.constraint(equalTo: labelAvailableMoney.bottomAnchor, constant: 13),
            labelSpendsPeriod.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            labelSpendsPeriodSum.bottomAnchor.constraint(equalTo: labelSpendsPeriod.bottomAnchor, constant: 0),
            labelSpendsPeriodSum.leadingAnchor.constraint(equalTo: labelSpendsPeriod.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            labelRub3.bottomAnchor.constraint(equalTo: labelSpendsPeriod.bottomAnchor, constant: 0),
            labelRub3.leadingAnchor.constraint(equalTo: labelSpendsPeriodSum.trailingAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            labelAllSpends.topAnchor.constraint(equalTo: labelSpendsPeriod.bottomAnchor, constant: 13),
            labelAllSpends.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            labelAllSpendsSum.bottomAnchor.constraint(equalTo: labelAllSpends.bottomAnchor, constant: 0),
            labelAllSpendsSum.leadingAnchor.constraint(equalTo: labelAllSpends.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            labelRub4.bottomAnchor.constraint(equalTo: labelAllSpends.bottomAnchor, constant: 0),
            labelRub4.leadingAnchor.constraint(equalTo: labelAllSpendsSum.trailingAnchor, constant: 5)
        ])
    }
}
