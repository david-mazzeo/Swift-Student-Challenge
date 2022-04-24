//
//  File.swift
//  Particle Binder
//
//  Created by David Mazzeo on 24/4/2022.
//

import UIKit

class HowTo: UIViewController {
    
    var firstTime = ""
    
    let howToButton = UIButton()
    
    override func loadView() {
        
        firstTime = UserDefaults.standard.string(forKey: "firstTime") ?? ""
        UserDefaults.standard.set("no", forKey: "firstTime")
        
        let view = UIView()
        view.backgroundColor = .black
        
        let howToTitle = UIImageView()
        howToTitle.image = UIImage(named: "Neon How To.heic")
        howToTitle.contentMode = .scaleAspectFit
        
        let textView = UITextView()
        textView.backgroundColor = .clear
        textView.textColor = .white
        textView.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textView.text = """
        Welcome to The Particle Binder, the particle accelerator developed to run inside your device!
        
        Your goal is to create a large element by collecting as many protons and neutrons from the accelerator as you can within 20 seconds. Collecting a particle is as easy as tapping it, but watch out - these particles decay and disappear quick, so they might be hard to tap on time!
        
        Your accelerator will take your extracted particles to create up to 16 different elements - each requiring their own amount of protons and neutrons to form. The largest element you've made will be saved for you to see where you're up to in your element discovery task.
        
        Have fun!
        """
        
        howToButton.configuration = .filled()
        howToButton.configuration?.cornerStyle = .capsule
        howToButton.configuration?.baseBackgroundColor = .systemYellow
        
        howToButton.setTitle("Continue", for: .normal)
        howToButton.setTitleColor(.white, for: .normal)
        howToButton.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 26, weight: UIFont.Weight.bold)]), for: .normal)
        
        howToButton.isUserInteractionEnabled = true
        howToButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        view.addSubview(howToTitle)
        view.addSubview(textView)
        view.addSubview(howToButton)
        
        howToTitle.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        howToButton.translatesAutoresizingMaskIntoConstraints = false
        
        howToTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        howToTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        howToTitle.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        howToTitle.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        howToButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35).isActive = true
        howToButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textView.topAnchor.constraint(equalTo: howToTitle.bottomAnchor, constant: 0).isActive = true
        textView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        textView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        textView.bottomAnchor.constraint(equalTo: howToButton.topAnchor, constant: -30).isActive = true
        
        let widthConstraintButton = NSLayoutConstraint(item: howToButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 170)
        let heightConstraintButton = NSLayoutConstraint(item: howToButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 60)
        
        let heightConstraintImage = NSLayoutConstraint(item: howToTitle, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 75)
        
        NSLayoutConstraint.activate([widthConstraintButton, heightConstraintButton, heightConstraintImage])
        
        self.view = view
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var parts = 30
        
        howToButton.layer.shadowOffset = .zero
        howToButton.layer.shadowColor = UIColor.systemYellow.cgColor
        howToButton.layer.shadowRadius = 20
        howToButton.layer.shadowOpacity = 0
        howToButton.layer.shadowPath = UIBezierPath(rect: howToButton.bounds).cgPath
        
        Timer.scheduledTimer(withTimeInterval: 0.0166, repeats: true) { [self] (Timer) in
            if parts > 0 {
                parts -= 1
                howToButton.layer.shadowOpacity = (howToButton.layer.shadowOpacity + 0.0333)
            } else {
                Timer.invalidate()
            }
        }
    }
    
    @objc func buttonPressed() {
        if firstTime != "no" {
            NotificationCenter.default.post(name: NSNotification.Name("autoStartGame"), object: nil)
            self.dismiss(animated: true, completion: nil)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
