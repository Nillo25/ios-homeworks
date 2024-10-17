import UIKit

class ProfileViewController: UIViewController {
    
    let nameLabel = UILabel()
    let statusLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupNavigationBar()
        setupProfileInfo()
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Profile"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back123", style: .plain, target: self, action: #selector(backButtonPressed))
    }
    
    @objc private func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setupProfileInfo() {
        nameLabel.text = "Hipster Cat"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.textColor = .black
        
        statusLabel.text = "Waiting for something..."
        
        
        
        let stackView = UIStackView(arrangedSubviews: [nameLabel, statusLabel])
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
