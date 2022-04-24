import UIKit

class WelcomeController: UIViewController {
    
    func getHighScoreColor() -> UIColor {
        
        if UserDefaults.standard.integer(forKey: "highScore") == 16 {
            
            return (UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 15 {
            
            return (UIColor(red: 0/255, green: 199/255, blue: 190/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 14 {
            
            return (UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 13 {
            
            return (UIColor(red: 168/255, green: 210/255, blue: 210/255, alpha: 1))
        
        } else if UserDefaults.standard.integer(forKey: "highScore") == 12 {
         
            return (UIColor(red: 210/255, green: 218/255, blue: 177/255, alpha: 1))
       
        } else if UserDefaults.standard.integer(forKey: "highScore") == 11 {
         
            return (UIColor(red: 175/255, green: 141/255, blue: 75/255, alpha: 1))
       
        } else if UserDefaults.standard.integer(forKey: "highScore") == 10 {
            
            return (UIColor(red: 204/255, green: 195/255, blue: 176/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 9 {
            
            return (UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 8 {
            
            return (UIColor(red: 65/255, green: 86/255, blue: 139/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 7 {
            
            return (UIColor(red: 100/255, green: 167/255, blue: 204/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 6 {
            
            return (UIColor(red: 123/255, green: 126/255, blue: 131/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 5 {
            
            return (UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 4 {
            
            return (UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1))
            
        } else if UserDefaults.standard.integer(forKey: "highScore") == 3 {
          
            return (UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1))
        
        } else if UserDefaults.standard.integer(forKey: "highScore") == 2 {
       
            return (UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1))
     
        } else if UserDefaults.standard.integer(forKey: "highScore") == 1 {
        
            return (UIColor(red: 133/255, green: 133/255, blue: 138/255, alpha: 1))
       
        } else {
       
            return .white
       
        }
    }
    
    let button = UIButton()
    let highScore = UILabel()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let welcomeImage = UIImageView()
        welcomeImage.image = UIImage(named: "Neon Welcome.heic")
        welcomeImage.contentMode = .scaleAspectFit
        
        let highScoreDescription = UILabel()
        highScoreDescription.text = "Your High Score:"
        highScoreDescription.textColor = .white
        highScoreDescription.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        let howToButton = UIButton()
        howToButton.configuration = .tinted()
        howToButton.configuration?.cornerStyle = .capsule
        howToButton.configuration?.baseBackgroundColor = .systemBlue
        
        howToButton.setTitle("How to play.", for: .normal)
        howToButton.setTitleColor(.white, for: .normal)
        howToButton.setAttributedTitle(NSAttributedString(string: "How to play.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)]), for: .normal)
        
        howToButton.isUserInteractionEnabled = true
        howToButton.addTarget(self, action: #selector(howToPressed), for: .touchDown)
        
        let madeByLabel = UILabel()
        madeByLabel.text = "Made with ❤️ by David Mazzeo."
        madeByLabel.textColor = UIColor(red: 133/255, green: 133/255, blue: 138/255, alpha: 1)
        madeByLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        
        highScore.text = UserDefaults.standard.string(forKey: "highScoreString")
        highScore.textColor = getHighScoreColor()
        highScore.font = UIFont.systemFont(ofSize: 55, weight: .heavy)
        
        if UserDefaults.standard.integer(forKey: "highScore") == 0 {
            highScore.text = "--"
        }

        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.baseBackgroundColor = .systemRed
        
        button.setTitle("Play", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Play", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.bold)]), for: .normal)
        
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        view.addSubview(button)
        view.addSubview(welcomeImage)
        view.addSubview(highScoreDescription)
        view.addSubview(highScore)
        view.addSubview(madeByLabel)
        view.addSubview(howToButton)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        highScoreDescription.translatesAutoresizingMaskIntoConstraints = false
        highScore.translatesAutoresizingMaskIntoConstraints = false
        madeByLabel.translatesAutoresizingMaskIntoConstraints = false
        howToButton.translatesAutoresizingMaskIntoConstraints = false
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let image = UIImage(named: "Neon Welcome.heic")!
        let ratio = image.size.height / image.size.width
        
        welcomeImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeImage.heightAnchor.constraint(equalTo: welcomeImage.widthAnchor, multiplier: ratio).isActive = true
        welcomeImage.widthAnchor.constraint(lessThanOrEqualToConstant: 500).isActive = true
        welcomeImage.leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor, constant: 0).isActive = true
        welcomeImage.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: 0).isActive = true
        
        highScore.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        highScore.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -25).isActive = true

        highScoreDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        highScoreDescription.bottomAnchor.constraint(equalTo: highScore.topAnchor, constant: -10).isActive = true
        
        madeByLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        madeByLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        howToButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        howToButton.bottomAnchor.constraint(equalTo: madeByLabel.topAnchor, constant: -20).isActive = true
        
        let widthConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 140)
        let heightConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 65)
        
        NSLayoutConstraint.activate([widthConstraintButton, heightConstraintButton])
        
        self.view = view
        
        NotificationCenter.default.addObserver(self, selector: #selector(highScoreChanged(_:)), name: NSNotification.Name ("highScoreChanged"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(autoStartGame(_:)), name: NSNotification.Name ("autoStartGame"), object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("highScoreChanged"), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("autoStartGame"), object: nil)
    }
    
    @objc func highScoreChanged(_ notification: Notification) {
        highScore.text = UserDefaults.standard.string(forKey: "highScoreString")
        highScore.textColor = getHighScoreColor()
    }
    
    @objc func autoStartGame(_ notification: Notification) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            let vc = SimulatorController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
    }
    
    @objc func howToPressed() {
        self.present(HowTo(), animated: true)
    }
    
    @objc func buttonPressed() {

        button.layer.shadowOffset = .zero
        button.layer.shadowColor = UIColor.systemPink.cgColor
        button.layer.shadowRadius = 20
        button.layer.shadowOpacity = 1
        button.layer.shadowPath = UIBezierPath(rect: button.bounds).cgPath
        
        UIButton.animate(withDuration: 0.2, animations: {
            self.button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { finish in
            UIButton.animate(withDuration: 0.2, animations: {
                self.button.transform = CGAffineTransform.identity
            })
        })
        
        DispatchQueue.main.async {
            if UserDefaults.standard.string(forKey: "firstTime") != "no" {
                self.present(HowTo(), animated: true)
            } else {
                let vc = SimulatorController()
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
        }
        
    }
    
}


