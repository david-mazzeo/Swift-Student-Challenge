import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome to The Gravity Box!"
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 30)
        

        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)]), for: .normal)
        
        button.isUserInteractionEnabled = true
//        button.addTarget(self, action: #selector(buttonDidTap), for: .touchDown)
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint (equalTo: view.centerXAnchor).isActive = true
        
        let widthContraints =  NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 140)
        let heightContraints = NSLayoutConstraint(item: button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 45)
        NSLayoutConstraint.activate([heightContraints,widthContraints])
        
        self.view = view
    }
}

PlaygroundPage.current.liveView = MyViewController()
