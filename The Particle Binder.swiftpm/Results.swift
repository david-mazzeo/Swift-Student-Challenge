//
//  File.swift
//  The Gravity Box
//
//  Created by David Mazzeo on 23/4/2022.
//

import UIKit

class Results: UIViewController {
    
    func resultsCalculator() -> (Int, String, UIColor, Int, Int) {
        
        if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 146 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 92 {
            
            return (16, "Uranium", UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 146, UserDefaults.standard.integer(forKey: "currentProtonResult") - 92)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 138 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 88 {
            
            return (15, "Radium", UIColor(red: 0/255, green: 199/255, blue: 190/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 138, UserDefaults.standard.integer(forKey: "currentProtonResult") - 88)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 118 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 79 {
            
            return (14, "Gold", UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 118, UserDefaults.standard.integer(forKey: "currentProtonResult") - 79)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 104 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 71 {
            
            return (13, "Lutetium", UIColor(red: 168/255, green: 210/255, blue: 210/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 104, UserDefaults.standard.integer(forKey: "currentProtonResult") - 71)
        
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 94 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 65 {
         
            return (12, "Terbium", UIColor(red: 210/255, green: 218/255, blue: 177/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 94, UserDefaults.standard.integer(forKey: "currentProtonResult") - 65)
       
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 78 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 55 {
         
            return (11, "Caesium", UIColor(red: 175/255, green: 141/255, blue: 75/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 78, UserDefaults.standard.integer(forKey: "currentProtonResult") - 55)
       
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 69 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 50 {
            
            return (10, "Tin", UIColor(red: 204/255, green: 195/255, blue: 176/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 69, UserDefaults.standard.integer(forKey: "currentProtonResult") - 50)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 61 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 47 {
            
            return (9, "Silver", UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 61, UserDefaults.standard.integer(forKey: "currentProtonResult") - 47)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 50 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 40 {
            
            return (8, "Zirconium", UIColor(red: 65/255, green: 86/255, blue: 139/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 50, UserDefaults.standard.integer(forKey: "currentProtonResult") - 40)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 42 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 36 {
            
            return (7, "Krypton", UIColor(red: 100/255, green: 167/255, blue: 204/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 42, UserDefaults.standard.integer(forKey: "currentProtonResult") - 36)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 30 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 26 {
            
            return (6, "Iron", UIColor(red: 123/255, green: 126/255, blue: 131/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 30, UserDefaults.standard.integer(forKey: "currentProtonResult") - 26)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 21 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 19 {
            
            return (5, "Potassium", UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 21, UserDefaults.standard.integer(forKey: "currentProtonResult") - 19)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 14 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 13 {
            
            return (4, "Aluminium", UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 14, UserDefaults.standard.integer(forKey: "currentProtonResult") - 13)
            
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 10 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 10 {
          
            return (3, "Neon", UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 10, UserDefaults.standard.integer(forKey: "currentProtonResult") - 10)
        
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 6 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 5 {
       
            return (2, "Boron", UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 6, UserDefaults.standard.integer(forKey: "currentProtonResult") - 5)
     
        } else if UserDefaults.standard.integer(forKey: "currentNeutronResult") >= 2 && UserDefaults.standard.integer(forKey: "currentProtonResult") >= 2 {
        
            return (1, "Helium", UIColor(red: 133/255, green: 133/255, blue: 138/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult") - 2, UserDefaults.standard.integer(forKey: "currentProtonResult") - 2)
       
        } else {
       
            return (0, "Nothing!", UIColor(red: 162/255, green: 132/255, blue: 94/255, alpha: 1), UserDefaults.standard.integer(forKey: "currentNeutronResult"), UserDefaults.standard.integer(forKey: "currentProtonResult"))
       
        }
            
    }
    
    var score = 0
    var scoreString = ""
    
    func decideIfHighScore() {
        if score >= UserDefaults.standard.integer(forKey: "highScore") {
            UserDefaults.standard.set(score, forKey: "highScore")
            UserDefaults.standard.set(scoreString, forKey: "highScoreString")
            NotificationCenter.default.post(name: NSNotification.Name("highScoreChanged"), object: nil)
        }
    }
    
    let particleBuilderDescription = UILabel()
    let builtParticle = UILabel()
    let remainingParticles = UILabel()
    let continueButton = UIButton()
    
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
        
        particleBuilderDescription.text = """
        With these particles,
        you could build:
        """
        
        particleBuilderDescription.numberOfLines = 2
        particleBuilderDescription.textColor = .white
        particleBuilderDescription.textAlignment = .center
        particleBuilderDescription.textColor = UIColor(red: 133/255, green: 133/255, blue: 138/255, alpha: 1)
        particleBuilderDescription.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        particleBuilderDescription.alpha = 0.0
        
        let results = resultsCalculator()
        
        score = results.0
        scoreString = results.1
        
        decideIfHighScore()
        
        builtParticle.text = results.1
        builtParticle.textColor = results.2
        builtParticle.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
        builtParticle.alpha = 0.0
        
        var neutronTerm = "neutrons"
        var protonTerm = "protons"
        
        if results.3 == 1 {
            neutronTerm = "neutron"
        }
        
        if results.4 == 1 {
            protonTerm = "proton"
        }
        
        remainingParticles.text = """
        You would have
        \(results.3) \(neutronTerm) and \(results.4) \(protonTerm)
        left over.
        """
        remainingParticles.numberOfLines = 3
        remainingParticles.textColor = UIColor(red: 133/255, green: 133/255, blue: 138/255, alpha: 1)
        remainingParticles.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        remainingParticles.textAlignment = .center
        remainingParticles.alpha = 0.0
        
        
        continueButton.configuration = .filled()
        continueButton.configuration?.cornerStyle = .capsule
        continueButton.configuration?.baseBackgroundColor = .systemGreen
        
        continueButton.setTitle("Done", for: .normal)
        continueButton.setTitleColor(.white, for: .normal)
        continueButton.setAttributedTitle(NSAttributedString(string: "Done", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 26, weight: UIFont.Weight.bold)]), for: .normal)
        
        continueButton.isUserInteractionEnabled = true
        continueButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        view.addSubview(resultsTitle)
        view.addSubview(neutronLabel)
        view.addSubview(protonLabel)
        view.addSubview(neutronCount)
        view.addSubview(protonCount)
        view.addSubview(particleBuilderDescription)
        view.addSubview(builtParticle)
        view.addSubview(remainingParticles)
        view.addSubview(continueButton)
        
        resultsTitle.translatesAutoresizingMaskIntoConstraints = false
        neutronLabel.translatesAutoresizingMaskIntoConstraints = false
        protonLabel.translatesAutoresizingMaskIntoConstraints = false
        neutronCount.translatesAutoresizingMaskIntoConstraints = false
        protonCount.translatesAutoresizingMaskIntoConstraints = false
        particleBuilderDescription.translatesAutoresizingMaskIntoConstraints = false
        builtParticle.translatesAutoresizingMaskIntoConstraints = false
        remainingParticles.translatesAutoresizingMaskIntoConstraints = false
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        particleBuilderDescription.topAnchor.constraint(equalTo: protonLabel.bottomAnchor, constant: 25).isActive = true
        particleBuilderDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        builtParticle.topAnchor.constraint(equalTo: particleBuilderDescription.bottomAnchor, constant: 10).isActive = true
        builtParticle.centerXAnchor.constraint(equalTo: particleBuilderDescription.centerXAnchor).isActive = true
        
        remainingParticles.topAnchor.constraint(equalTo: builtParticle.bottomAnchor, constant: 10).isActive = true
        remainingParticles.centerXAnchor.constraint(equalTo: builtParticle.centerXAnchor).isActive = true
        
        continueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let widthConstraintButton = NSLayoutConstraint(item: continueButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 170)
        let heightConstraintButton = NSLayoutConstraint(item: continueButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 60)
        
        let heightConstraintImage = NSLayoutConstraint(item: resultsTitle, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 75)
        
        NSLayoutConstraint.activate([widthConstraintButton, heightConstraintButton, heightConstraintImage])
        
        neutronLabel.animate(newText: "Neutrons", characterDelay: 0.1)
        protonLabel.animate(newText: "Protons", characterDelay: 0.1)
        
        self.view = view
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        particleBuilderDescription.fadeIn()
        builtParticle.fadeIn(duration: 0.75, delay: 1.0, completion: {(finished: Bool) -> Void in})
        remainingParticles.fadeIn(duration: 0.75, delay: 2.0, completion: {(finished: Bool) -> Void in})
        
        var parts = 30
        
        continueButton.layer.shadowOffset = .zero
        continueButton.layer.shadowColor = UIColor.systemGreen.cgColor
        continueButton.layer.shadowRadius = 20
        continueButton.layer.shadowOpacity = 0
        continueButton.layer.shadowPath = UIBezierPath(rect: continueButton.bounds).cgPath
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            Timer.scheduledTimer(withTimeInterval: 0.0166, repeats: true) { [self] (Timer) in
                if parts > 0 {
                    parts -= 1
                    continueButton.layer.shadowOpacity = (continueButton.layer.shadowOpacity + 0.0333)
                } else {
                    Timer.invalidate()
                }
            }
        }
        
    }
    
    @objc func buttonPressed() {
        NotificationCenter.default.post(name: NSNotification.Name("viewDismissed"), object: nil)
        self.dismiss(animated: true, completion: nil)
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

extension UIView {
    
    func fadeIn(duration: TimeInterval = 0.75, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
        self.alpha = 1.0
        }, completion: completion)
    }
    
}
