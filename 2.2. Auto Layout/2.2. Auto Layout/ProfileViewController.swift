import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    let bottomButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        setupProfileHeaderView()
        setupBottomButton()
    }
    
    private func setupProfileHeaderView() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    private func setupBottomButton() {
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.setTitle("New Button", for: .normal)
        view.addSubview(bottomButton)
        
        NSLayoutConstraint.activate([
            bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
