import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let welcomeLabel = UILabel()
        welcomeLabel.text = """
        Welcome to
        The Gravity Box!
        """
        welcomeLabel.numberOfLines = 2
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 30)
        welcomeLabel.textColor = .white
        welcomeLabel.textAlignment = .center

        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)]), for: .normal)
        
        button.isUserInteractionEnabled = true
//        button.addTarget(self, action: #selector(buttonDidTap), for: .touchDown)
        
        view.addSubview(button)
        view.addSubview(welcomeLabel)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10).isActive = true
        
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let widthContraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 140)
        let heightContraintButton = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 45)
        
        let heightContraintLabel = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 80)
        
        NSLayoutConstraint.activate([widthContraintButton, heightContraintButton, heightContraintLabel])
        
        self.view = view
    }
    
}

PlaygroundPage.current.liveView = MyViewController()
