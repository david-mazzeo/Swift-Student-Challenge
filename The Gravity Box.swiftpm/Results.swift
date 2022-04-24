//
//  File.swift
//  The Gravity Box
//
//  Created by David Mazzeo on 23/4/2022.
//

import UIKit

class Results: UIViewController {
    
    func resultsCalculator() {
        
        if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 146 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 92 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 138 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 88 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 118 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 79 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 104 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 71 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 94 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 65 {
        
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 78 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 55 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 69 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 50 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 61 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 47 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 50 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 40 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 42 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 36 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 30 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 26 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 21 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 19 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 14 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 13 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 10 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 10 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 6 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 5 {
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 2 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 2 {
            
        } else {
            
        }
            
    }
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let resultsTitle = UIImageView()
        resultsTitle.image = UIImage(named: "Neon Results.heic")
        resultsTitle.contentMode = .scaleAspectFit
        
        let neutronLabel = UILabel()
        neutronLabel.text = "Neutrons"
        neutronLabel.textColor = .white
        neutronLabel.font = UIFont.systemFont(ofSize: 34, weight: .heavy)
        
        let protonLabel = UILabel()
        protonLabel.text = "Protons"
        protonLabel.textColor = .white
        protonLabel.font = UIFont.systemFont(ofSize: 34, weight: .heavy)
        
        let neutronCount = UILabel()
        neutronCount.text = UserDefaults.standard.string(forKey: "currentNeutronResult")
        neutronCount.textAlignment = .right
        neutronCount.textColor = .red
        neutronCount.font = UIFont.systemFont(ofSize: 34, weight: .semibold)
        
        let protonCount = UILabel()
        protonCount.text = UserDefaults.standard.string(forKey: "currentProtonResult")
        protonCount.textAlignment = .right
        protonCount.textColor = .blue
        protonCount.font = UIFont.systemFont(ofSize: 34, weight: .semibold)
        
        view.addSubview(resultsTitle)
        view.addSubview(neutronLabel)
        view.addSubview(protonLabel)
        view.addSubview(neutronCount)
        view.addSubview(protonCount)
        
        resultsTitle.translatesAutoresizingMaskIntoConstraints = false
        neutronLabel.translatesAutoresizingMaskIntoConstraints = false
        protonLabel.translatesAutoresizingMaskIntoConstraints = false
        neutronCount.translatesAutoresizingMaskIntoConstraints = false
        protonCount.translatesAutoresizingMaskIntoConstraints = false
        
        resultsTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultsTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        neutronLabel.topAnchor.constraint(equalTo: resultsTitle.bottomAnchor, constant: 16).isActive = true
        neutronLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        protonLabel.topAnchor.constraint(equalTo: neutronLabel.bottomAnchor, constant: 8).isActive = true
        protonLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        neutronCount.topAnchor.constraint(equalTo: resultsTitle.bottomAnchor, constant: 16).isActive = true
        neutronCount.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        protonCount.topAnchor.constraint(equalTo: neutronLabel.bottomAnchor, constant: 8).isActive = true
        protonCount.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        let heightConstraintImage = NSLayoutConstraint(item: resultsTitle, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 75)
        
        NSLayoutConstraint.activate([heightConstraintImage])
        
        neutronLabel.animate(newText: "Neutrons", characterDelay: 0.1)
        protonLabel.animate(newText: "Protons", characterDelay: 0.1)
        
        self.view = view
    }
    
}

extension UILabel {

    func animate(newText: String, characterDelay: TimeInterval) {

        DispatchQueue.main.async {

            self.text = ""

            for (index, character) in newText.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    self.text?.append(character)
                }
            }
        }
    }

}
