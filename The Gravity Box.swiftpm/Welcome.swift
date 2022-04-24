import UIKit

class WelcomeController: UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let welcomeImage = UIImageView()
        welcomeImage.image = UIImage(named: "Neon Welcome.heic")
        welcomeImage.contentMode = .scaleAspectFit

        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.baseBackgroundColor = .systemRed
        
        button.setTitle("Play", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Play", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)]), for: .normal)
        
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        view.addSubview(button)
        view.addSubview(welcomeImage)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let image = UIImage(named: "Neon Welcome.heic")!
        let ratio = image.size.height / image.size.width
        print(ratio)
        
        welcomeImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeImage.heightAnchor.constraint(equalTo: welcomeImage.widthAnchor, multiplier: ratio).isActive = true
        welcomeImage.widthAnchor.constraint(lessThanOrEqualToConstant: 500).isActive = true

        let widthConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 140)
        let heightConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 45)
        
        NSLayoutConstraint.activate([widthConstraintButton, heightConstraintButton])
        
        self.view = view
        
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
            let vc = SimulatorController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
        
    }
    
}


