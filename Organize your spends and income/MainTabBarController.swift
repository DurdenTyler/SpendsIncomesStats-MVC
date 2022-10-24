//
//  MainTabBarController.swift
//  Organize your spends and income
//
//  Created by Ivan White on 23.10.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar()
        setupTabBar(roundLayer: customTabBar())
    }
    
    private func tabBar() {
        viewControllers = [
            generateVC(vc: SpendsViewController(), image: UIImage(systemName: "cart.fill.badge.minus")),
            generateVC(vc: IncomesViewController(), image: UIImage(systemName: "cart.fill.badge.plus")),
            generateVC(vc: StatsViewController(), image: UIImage(systemName: "chart.bar.fill"))
        ]
    }
    
    private func setupTabBar(roundLayer: CAShapeLayer) {
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = tabBar.bounds.width / 5
        tabBar.itemPositioning = .centered
        roundLayer.fillColor = UIColor(named: "blackBlue")?.cgColor
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        
    }
    
    private func generateVC(vc: UIViewController, image: UIImage?)-> UIViewController {
        vc.tabBarItem.image = image
        return vc
    }
    
    private func customTabBar() -> CAShapeLayer {
        let positionOnX: CGFloat = 40
        let positionOnY: CGFloat = 6
        let width = tabBar.bounds.width - 80
        let height = tabBar.bounds.height + positionOnY
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(x: positionOnX, y: tabBar.bounds.minY - positionOnY * 1.6, width: width, height: height), cornerRadius: 25)
        
        roundLayer.path = bezierPath.cgPath
        return roundLayer
    }
}
