import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let welcomeLabel = UILabel()
        welcomeLabel.text = """
        Welcome to
        The Gravity Box.
        """
        welcomeLabel.numberOfLines = 2
        welcomeLabel.font = UIFont.systemFont(ofSize: 35, weight: UIFont.Weight.heavy)
        welcomeLabel.textColor = .white
        welcomeLabel.textAlignment = .center

        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.baseBackgroundColor = .systemRed
        
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)]), for: .normal)
        
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        view.addSubview(button)
        view.addSubview(welcomeLabel)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10).isActive = true
        
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let widthConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 140)
        let heightConstraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 45)
        
        let heightConstraintLabel = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        
        NSLayoutConstraint.activate([widthConstraintButton, heightConstraintButton, heightConstraintLabel])
        
        self.view = view
    }
    
    @objc func buttonPressed() {

        button.layer.shadowOffset = .zero
        button.layer.shadowColor = UIColor.systemPink.cgColor
        button.layer.shadowRadius = 20
        button.layer.shadowOpacity = 1
        button.layer.shadowPath = UIBezierPath(rect: button.bounds).cgPath
        
        UIButton.animate(withDuration: 0.2, animations: {
            self.button.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }, completion: { finish in
            UIButton.animate(withDuration: 0.2, animations: {
                self.button.transform = CGAffineTransform.identity
            })
        })
    }
    
}

PlaygroundPage.current.liveView = MyViewController()
