import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.image = UIImage(named: "cat")
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    let statusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Waiting for something..."
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textColor = .gray
        textField.borderStyle = .none
        return textField
    }()
    
    let setStatusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    
    
    @objc func buttonPressed() {
        guard let status = statusTextField.text else { return }
        print("Status: \(status)")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        
        addSubview(avatarImageView)
        addSubview(nameLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let padding: CGFloat = 16
        let avatarSize: CGFloat = 100
        avatarImageView.frame = CGRect(x: padding, y: padding, width: avatarSize, height: avatarSize)
        
        nameLabel.frame = CGRect(x: avatarImageView.frame.maxX + padding, y: 32, width: bounds.width - avatarSize - 3 * padding, height: 24)
        
        statusTextField.frame = CGRect(x: avatarImageView.frame.maxX + padding, y: nameLabel.frame.maxY + 8, width: bounds.width - avatarSize - 3 * padding, height: 40)
        
        let buttonHeight: CGFloat = 50
        setStatusButton.frame = CGRect(x: padding, y: avatarImageView.frame.maxY + padding, width: bounds.width - 2 * padding, height: buttonHeight)
    }
}
